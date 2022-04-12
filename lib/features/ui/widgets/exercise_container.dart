import 'package:flutter/material.dart';
import 'package:physics_test/core/style/color.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';

class ExcerciseItem extends StatelessWidget {
  final ExerciseModel model;
  const ExcerciseItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 214, 214, 214).withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Упражнение id ${model.id}"),
                Text("Order id ${model.order}"),
              ],
            ),
            model.orderPrefix!.isNotEmpty
                ? Text("OrderPrefix id ${model.orderPrefix}")
                : Container(),
          ],
        ),
      ),
    );
  }
}
