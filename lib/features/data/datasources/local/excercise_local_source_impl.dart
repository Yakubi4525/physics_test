import 'package:injectable/injectable.dart';
import 'package:physics_test/core/logger/logger_impl.dart';
import 'package:physics_test/features/data/datasources/local/excercise_local_source.dart';
import 'package:physics_test/features/data/models/api_excercise_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:physics_test/features/domain/enteties/excercise.dart';

const excerciesModels = 'lib/core/json_datas/exercises.json';

@LazySingleton(as: LocalExcerciseSource)
class LocalExcerciseSourceImpl extends LocalExcerciseSource {
  Future<String> getJson({required String path}) {
    return rootBundle.loadString(path);
  }

  @override
  Future<List<ApiExerciseModel>> getExcercises() async {
    List<ApiExerciseModel> excerciseList = [];
    var data = json.decode(await getJson(path: excerciesModels));
    if (data != null) {
      for (var excercise in data) {
        excerciseList.add(ApiExerciseModel.fromJson(excercise));
      }
      return excerciseList;
    }

    throw UnimplementedError();
  }

  @override
  Future<void> setExcercises({required List<ExerciseModel> listModels}) {
    List<Map<String, dynamic>> excercise = [];
    for (var model in listModels) {
      excercise.add(model.toJson());
    }
    logger.e("New data excercise list");
    logger.d(excercise);
    throw UnimplementedError();
  }
}
