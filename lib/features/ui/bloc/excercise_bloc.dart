import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:physics_test/core/error/failures.dart';
import 'package:physics_test/core/logger/logger_impl.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';
import 'package:physics_test/features/domain/repository/excercise_repository.dart';

part 'excercise_event.dart';
part 'excercise_state.dart';
part 'excercise_bloc.freezed.dart';

@injectable
class ExcerciseBloc extends Bloc<ExcerciseEvent, ExcerciseState> {
  ExcerciseRepo excerciseRepo;
  List<ExerciseModel> listOfModels = [];
  ExcerciseBloc(this.excerciseRepo) : super(ExcerciseState.initial()) {
    on<ExcerciseEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            noInternet: false,
            isSubmitting: true,
          ),
        );
        await event.map(
          started: (e) async {
            state.copyWith(
              isSubmitting: true,
            );
            final result = await excerciseRepo.getListExcercises();
            result.fold(
              (left) {
                if (left is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                    ),
                  );
                }
                if (left is ServerFailure) {
                  logger.e(left.toString());
                  emit(
                    state.copyWith(
                      serverError: true,
                    ),
                  );
                }
              },
              (right) async {
                logger.d(right);
                listOfModels = right;
                emit(
                  state.copyWith(
                    excercises: right,
                    isSubmitting: false,
                  ),
                );
              },
            );
          },
          updateListOfModels: (value) async {
            emit(
              state.copyWith(
                excercises: updateList(
                  oldlist: listOfModels,
                  oldIndex: value.oldIndex,
                  newIndex: value.newIndex,
                ),
                isSubmitting: false,
              ),
            );
          },
        );
      },
    );
  }

  List<ExerciseModel> updateList({
    required List<ExerciseModel> oldlist,
    required int oldIndex,
    required int newIndex,
  }) {
    //[Новый лист для хранений новых моделей
    List<ExerciseModel> newList = oldlist;

    /// Удаляю елемент со старой позицци и обновляю новый список для экрана
    newList.insert(
      newIndex > oldIndex ? newIndex - 1 : newIndex,
      newList.removeAt(oldIndex),
    );
    log("oldIndex $oldIndex");
    log("newIndex $newIndex");

    ///Переменная для хранения очереди
    int startOrder = 1;

    ///Пробегаюсь по всем элементам списка
    for (int item = 0; item < newList.length; item++) {
      if (item == newIndex) {
        log("item $item ");

        ///Проверяю каждый элемент
        ///если он не первый
        if (newList[item].orderPrefix!.isNotEmpty &&
            item > 1 &&
            item < newList.length - 1) {
          if (newList[item - 1].orderPrefix!.isEmpty &&
              newList[item + 1].orderPrefix!.isEmpty) {
            newList[item].orderPrefix = '';
          }
        }
        if (item == 0 &&
            newList.length > 1 &&
            newList[item + 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }
        if (item == newList.length - 1 &&
            newList[item - 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }
      }
      newList[item].order = startOrder;
      if (newList[item].orderPrefix!.isEmpty) {
        startOrder++;
      } else {
        if (item < newList.length - 1) {
          if (newList[item + 1].orderPrefix!.isEmpty) {
            startOrder++;
          }
        }
      }
    }

    return newList;

    // return newIndex > oldIndex
    //     ? updateListUpToDown(
    //         newIndex: newIndex,
    //         oldIndex: oldIndex,
    //         oldlist: oldlist,
    //       )
    //     : updateListDownToUp(
    //         newIndex: newIndex,
    //         oldIndex: oldIndex,
    //         oldlist: oldlist,
    //       );
  }

  List<ExerciseModel> updateListUpToDown({
    required List<ExerciseModel> oldlist,
    required int oldIndex,
    required int newIndex,
  }) {
    List<ExerciseModel> newList = oldlist;
    return newList;
  }

  List<ExerciseModel> updateListDownToUp({
    required List<ExerciseModel> oldlist,
    required int oldIndex,
    required int newIndex,
  }) {
    List<ExerciseModel> newList = oldlist;
    return newList;
  }
}
