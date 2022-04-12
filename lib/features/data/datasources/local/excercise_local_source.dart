import 'package:physics_test/features/data/models/api_excercise_model.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';

abstract class LocalExcerciseSource {
  ///Retruns a list of [Excercise] objects if not empty
  ///
  ///Returns empty list of [Excercise] type if there are no saved data
  Future<List<ApiExerciseModel>> getExcercises();
  Future<void> setExcercises({
    required List<ExerciseModel> listModels,
  });
}
