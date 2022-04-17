import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:physics_test/features/excercise/domain/enteties/excercise.dart';

class ExcercieController extends GetxController {
  List<ExerciseModel> listOfModels = [];

  void clearController() {
    listOfModels = [];
  }

  bool checkForSuperSet() {
    for (var item in listOfModels) {
      if (item.orderPrefix!.isNotEmpty) {
        return true;
      }
    }
    return false;
  }

  void updateListofExcercise({required List<ExerciseModel> models}) {
    listOfModels = [];
    listOfModels = models;
    update();
  }

  ///Метод для обновления списка при перемещение
  List<ExerciseModel> updateList({
    required int oldIndex,
    required int newIndex,
  }) {
    //[Новый лист для хранений новых моделей
    List<ExerciseModel> newList = listOfModels;

    /// Удаляю елемент со старой позицци и обновляю новый список для экрана
    var workIndex = newIndex > oldIndex ? newIndex - 1 : newIndex;
    newList.insert(
      workIndex,
      newList.removeAt(oldIndex),
    );

    ///Переменная для хранения очереди
    int startOrder = 1;
    int startCharacterCode = 97;

    ///Пробегаюсь по всем элементам списка
    for (int item = 0; item < newList.length; item++) {
      if (item == workIndex) {
        if (item > 0 && item < newList.length - 1) {
          if (newList[item - 1].orderPrefix!.isNotEmpty &&
              newList[item + 1].orderPrefix!.isNotEmpty) {
            newList[item].orderPrefix = 'f';
          } else if (newList[item - 1].orderPrefix!.isEmpty &&
              newList[item + 1].orderPrefix!.isEmpty) {
            newList[item].orderPrefix = '';
          }
        }

        ///если элемент первый
        if (item == 0 &&
            newList.length > 1 &&
            newList[item + 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }

        ///Проверяю каждый элемент
        if (newList[item].orderPrefix!.isNotEmpty &&
            item > 1 &&
            item < newList.length - 1) {
          if (newList[item - 1].orderPrefix!.isEmpty &&
              newList[item + 1].orderPrefix!.isEmpty) {
            newList[item].orderPrefix = '';
          }
        }
      }

      ///Проверка если элемент последный
      if (item + 1 == newIndex) {
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
      if (newList[item].orderPrefix!.isNotEmpty) {
        newList[item].orderPrefix = String.fromCharCode(startCharacterCode);
        startCharacterCode++;
      }
    }
    listOfModels = [];
    listOfModels = List.from(newList);
    return newList;
  }

  ///Метод для удаления элемента из списка суперсетов
  List<ExerciseModel> deleteFromSuperSet({required int index}) {
    List<ExerciseModel> newList = listOfModels;
    var deleteItem = newList[index];
    int startOrder = 1;
    int startCharacterCode = 97;
    newList.remove(deleteItem);
    deleteItem.orderPrefix = '';
    newList.add(deleteItem);
    newList[listOfModels.length - 1].orderPrefix = '';
    for (int item = 0; item < newList.length; item++) {
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
      if (item > 0 && item < newList.length - 1) {
        if (newList[item - 1].orderPrefix!.isNotEmpty &&
            newList[item + 1].orderPrefix!.isNotEmpty) {
          newList[item].orderPrefix = 'f';
        } else if (newList[item - 1].orderPrefix!.isEmpty &&
            newList[item + 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }
      }

      ///если элемент первый
      if (item == 0 &&
          newList.length > 1 &&
          newList[item + 1].orderPrefix!.isEmpty) {
        newList[item].orderPrefix = '';
      }

      ///Проверка если элемент последный
      if (item == newList.length) {
        if (item == newList.length - 1 &&
            newList[item - 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }
      }
      if (newList[item].orderPrefix!.isNotEmpty) {
        newList[item].orderPrefix = String.fromCharCode(startCharacterCode);
        startCharacterCode++;
      }
    }
    listOfModels = [];
    listOfModels = List.from(newList);
    return listOfModels;
  }

  ///Метод для создания суперсетов
  List<ExerciseModel> createSuperSet({required int index}) {
    List<ExerciseModel> newList = listOfModels;
    var deleteItem = newList[index];
    int startOrder = 1;
    int startCharacterCode = 97;
    if (index > 0) {
      newList[index].orderPrefix = String.fromCharCode(startCharacterCode + 1);

      newList[index - 1].orderPrefix = String.fromCharCode(startCharacterCode);
    } else {
      newList[index].orderPrefix = String.fromCharCode(startCharacterCode);
      newList[index + 1].orderPrefix =
          String.fromCharCode(startCharacterCode + 1);
    }

    for (int item = 0; item < newList.length; item++) {
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

      if (item > 0 && item < newList.length - 1) {
        if (newList[item - 1].orderPrefix!.isNotEmpty &&
            newList[item + 1].orderPrefix!.isNotEmpty) {
          newList[item].orderPrefix = 'f';
        } else if (newList[item - 1].orderPrefix!.isEmpty &&
            newList[item + 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }
      }

      ///если элемент первый
      if (item == 0 &&
          newList.length > 1 &&
          newList[item + 1].orderPrefix!.isEmpty) {
        newList[item].orderPrefix = '';
      }

      ///Проверка если элемент последный
      if (item == newList.length) {
        if (item == newList.length - 1 &&
            newList[item - 1].orderPrefix!.isEmpty) {
          newList[item].orderPrefix = '';
        }
      }
      if (newList[item].orderPrefix!.isNotEmpty) {
        newList[item].orderPrefix = String.fromCharCode(startCharacterCode);
        startCharacterCode++;
      }
    }

    listOfModels = [];
    listOfModels = List.from(newList);
    return listOfModels;
  }

  @override
  void onClose() {
    clearController();
    super.onClose();
  }
}
