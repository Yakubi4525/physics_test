import 'dart:developer';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:physics_test/features/excercise/domain/enteties/excercise.dart';

class ExcercieController extends GetxController {
  List<ExerciseModel> listOfModels = [];

  void clearController() {
    listOfModels = [];
  }

  void updateListofExcercise({required List<ExerciseModel> models}) {
    listOfModels = [];
    listOfModels = models;
    update();
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
    log("character test ${String.fromCharCode(97)}");
    log("character test ${String.fromCharCode(98)}");
    log("character test ${String.fromCharCode(99)}");

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
    listOfModels=[];
    listOfModels =List.from(newList);
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

  // List<ExerciseModel> updateListUpToDown({
  //   required List<ExerciseModel> oldlist,
  //   required int oldIndex,
  //   required int newIndex,
  // }) {
  //   List<ExerciseModel> newList = oldlist;
  //   return newList;
  // }

  // List<ExerciseModel> updateListDownToUp({
  //   required List<ExerciseModel> oldlist,
  //   required int oldIndex,
  //   required int newIndex,
  // }) {
  //   List<ExerciseModel> newList = oldlist;
  //   return newList;
  // }

  @override
  void onClose() {
    clearController();
    super.onClose();
  }
}
