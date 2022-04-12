import 'package:physics_test/features/domain/enteties/excercise.dart';

class ApiExerciseModel extends ExerciseModel {
  ApiExerciseModel({
    required final int id,
    required final int order,
    required final String orderPrefix,
  }) : super(
          id: id,
          order: order,
          orderPrefix: orderPrefix,
        );

  factory ApiExerciseModel.fromJson(dynamic data) {
    return ApiExerciseModel(
      id: data['id'],
      order: data['order'],
      orderPrefix: data['order_prefix'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "order": order,
      "order_prefix": orderPrefix,
    };
  }
}
