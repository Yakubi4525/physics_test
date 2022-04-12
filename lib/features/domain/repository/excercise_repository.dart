import 'package:dartz/dartz.dart';
import 'package:physics_test/core/error/failures.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';

abstract class ExcerciseRepo {
  Future<Either<Failure, List<ExerciseModel>>> getListExcercises();
  Future<Either<Failure, void>> setListExcercise({
    required List<ExerciseModel> listModels,
  });

}
