import 'package:flutter/material.dart';
import 'package:physics_test/core/components/buttons/accent_button.dart';
import 'package:physics_test/core/style/color.dart';
import 'package:physics_test/features/domain/enteties/excercise.dart';

class SuperSet extends StatefulWidget {
  final Function onAcept;
  final Function onCancel;
  final List<ExerciseModel> listofExcercise;

  const SuperSet({
    Key? key,
    required this.onAcept,
    required this.onCancel,
    required this.listofExcercise,
  }) : super(key: key);
  @override
  SuperSetState createState() => SuperSetState();
}

class SuperSetState extends State<SuperSet> {
  @override
  void initState() {
    super.initState();
  }

  Widget buildHeader() {
    return Container(
      width: 95,
      height: 5,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: kGreColor, borderRadius: BorderRadius.circular(15)),
    );
  }

  Widget buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 34, bottom: 24),
      child: Center(
        child: Column(
          children: [
            const Text(
              "Структура Json",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Это структура будет отправлена бэкенду",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListOfStructure() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          widget.listofExcercise.length,
          (index) => Text(
            
            "${widget.listofExcercise[index].toJson()},",
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    return AccentButton(
      onTap: () {
        Navigator.pop(context);
        widget.onAcept();
      },
      title: 'Понятно :)',
      height: 45,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 50),
                child: Column(
                  children: [
                    buildHeader(),
                    buildTitle(),
                    buildListOfStructure(),
                    buildButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
