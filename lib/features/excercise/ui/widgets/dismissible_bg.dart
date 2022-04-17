import 'package:flutter/material.dart';
import 'package:physics_test/features/excercise/domain/enteties/excercise.dart';

class DisMissibleBg extends StatelessWidget {
  const DisMissibleBg({Key? key, required this.item,required this.isRight}) : super(key: key);
  final ExerciseModel item;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: item.orderPrefix!.isEmpty ? Colors.green : Colors.red,
      alignment: isRight? Alignment.centerRight: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item.orderPrefix!.isEmpty
                ? "Создать суперсет"
                : "Удалить из суперсет",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
