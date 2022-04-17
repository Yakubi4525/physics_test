
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:physics_test/core/error/failures.dart';
import 'package:physics_test/core/logger/logger_impl.dart';
import 'package:physics_test/features/domain/controllers/excercise_controller.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';
import 'package:physics_test/features/domain/repository/excercise_repository.dart';

part 'excercise_event.dart';
part 'excercise_state.dart';
part 'excercise_bloc.freezed.dart';

@injectable
class ExcerciseBloc extends Bloc<ExcerciseEvent, ExcerciseState> {
  ExcerciseRepo excerciseRepo;
  List<ExerciseModel> listOfModels = [];
  var excerciseController = Get.put(ExcercieController());
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
                excercises: excerciseController.updateList(
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
}
