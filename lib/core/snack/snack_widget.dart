import 'package:flutter/material.dart';
import 'package:physics_test/core/style/color.dart';

final SnackBar noInternetSnackbar = SnackBar(
  backgroundColor: kBlackColor,
  elevation: 2,
  content: const Text(
    'Отсутсвует подключение к сети :( ',
  ),
  action: SnackBarAction(
    label: 'Скрыть',
    textColor: kMainColor,
    onPressed: () {},
  ),
);

final SnackBar wrongCodeSnackBar = SnackBar(
  backgroundColor: kBlackColor,
  elevation: 2,
  content: const Text(
    'Неправильный код :( ',
  ),
  action: SnackBarAction(
    label: 'Скрыть',
    textColor: kMainColor,
    onPressed: () {},
  ),
);