// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';

class BiuBiuModal {
  static void show(context, child) {
    showModalBottomSheet(
      backgroundColor: MAIN_BACKGROUND_COLOR,
      context: context,
      builder: (BuildContext context) {
        return child;
      },
    );
  }
  static void hide(context) {
    Navigator.of(context).pop();
  }
}
