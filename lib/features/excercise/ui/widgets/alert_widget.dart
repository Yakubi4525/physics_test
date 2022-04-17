import 'package:flutter/material.dart';
import 'package:physics_test/core/style/color.dart';

// ignore: must_be_immutable
class AlertWidget extends StatelessWidget {
  final String info;
  const AlertWidget({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: const BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 15,
            color: Color.fromRGBO(93, 95, 239, 0.45),
          ),
        ],
      ),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_rounded,
            size: 30,
            color: Color.fromRGBO(218, 253, 72, 1),
          ),
          const SizedBox(height: 12),
          Text('$info', style: TextStyle(color: kWhiteColor)),
        ],
      ),
    );
  }
}
