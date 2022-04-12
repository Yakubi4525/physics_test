import 'package:injectable/injectable.dart';
import 'package:physics_test/core/error/exceptions.dart';
import 'package:physics_test/core/network_check/network_info.dart';
import 'package:physics_test/features/data/datasources/local/excercise_local_source.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';
import 'package:physics_test/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:physics_test/features/domain/repository/excercise_repository.dart';

@LazySingleton(as: ExcerciseRepo)
class ExcerciseRepoImpl extends ExcerciseRepo {
  final LocalExcerciseSource localRepo;
  final NetworkInfo networkInfo;

  ExcerciseRepoImpl({required this.localRepo, required this.networkInfo});

  @override
  Future<Either<Failure, List<ExerciseModel>>> getListExcercises() async {
    final bool hasConnection = await networkInfo.isConnected();
    if (hasConnection) {
      try {
        final excercises = await localRepo.getExcercises();
        return right(excercises);
      } on ServerException catch (e) {
        return left(
          ServerFailure(
            error: e.error,
            stack: e.stack,
          ),
        );
      }
    } else {
      return left(const NoInternetFailure());
    }
  }

  @override
  Future<Either<Failure, void>> setListExcercise({
    required List<ExerciseModel> listModels,
  }) {
    localRepo.setExcercises(listModels: listModels);
    throw UnimplementedError();
  }
}
