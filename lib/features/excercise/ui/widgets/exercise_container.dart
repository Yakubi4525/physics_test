import 'package:flutter/material.dart';
import 'package:physics_test/core/style/color.dart';
import 'package:physics_test/features/excercise/domain/enteties/excercise.dart';

class ExcerciseItem extends StatelessWidget {
  final ExerciseModel item;
  const ExcerciseItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 8, bottom: 8, left: item.orderPrefix!.isNotEmpty ? 32: 0),
      child: Container(
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          title: Text(
            "Упражнения № ${item.id}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order id ${item.order}",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor,
                ),
              ),
              item.orderPrefix!.isNotEmpty
                  ? Text(
                      "Order Prefix id ${item.orderPrefix}",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
