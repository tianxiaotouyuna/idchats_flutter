// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// ignore_for_file: constant_identifier_names
enum ModalStyle {
  Material_STYLE, //常规通用
  Cupertino_STYLE, //抽屉页面
}

class BiuBiuModal {
  static void show(context, child, {style = ModalStyle.Material_STYLE}) {
    if (style == ModalStyle.Material_STYLE)
      show_material(context, child);
    else
      show_Cupertino(context, child);
  }

  static void hide(context) {
    Navigator.of(context).pop();
  }

  static void show_material(context, child) {
    showModalBottomSheet(
      backgroundColor: MAIN_BACKGROUND_COLOR,
      context: context,
      builder: (BuildContext context) {
        return child;
      },
    );
    // showCupertinoModalBottomSheet(
    //                     expand: true,
    //   backgroundColor: MAIN_BACKGROUND_COLOR,
    //                     context: context,
    //                     builder: (context) => child,
    //                   );
  }

  static void show_Cupertino(context, child) {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) => child,
    );
  }
}
