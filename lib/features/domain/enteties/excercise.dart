class ExerciseModel {
  int? id;
  int? order;
  String? orderPrefix;
  ExerciseModel({
    required this.id,
    required this.order,
    required this.orderPrefix,
  });
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "order": order,
      "order_prefix": orderPrefix,
    };
  }
}
