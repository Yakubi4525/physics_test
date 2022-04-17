import 'package:flutter/material.dart';
import 'package:physics_test/core/components/buttons/accent_button.dart';
import 'package:physics_test/core/style/color.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  const BottomButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 110,
        decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 214, 214, 214).withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(-10, -10),
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            right: 20,
            bottom: 40,
          ),
          child: AccentButton(
            onTap: () {
              onTap();
            },
            title: 'Показать структуру для бэка',
            height: 45,
          ),
        ),
      ),
    );
  }
}
