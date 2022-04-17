import 'package:flutter/material.dart';
import 'package:physics_test/core/style/color.dart';

// ignore: must_be_immutable
class AccentButton extends StatelessWidget {
  Function() onTap;
  final String title;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;
  final bool showBoxShadow;
  final double height;

  AccentButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.backGroundColor = kMainColor,
    this.borderColor = kMainColor,
    this.textColor = kWhiteColor,
    this.showBoxShadow = true,
    this.height = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: backGroundColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
         
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
