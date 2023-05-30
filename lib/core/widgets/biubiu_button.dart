import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';
import '../config/constants/app_constants.dart';

// ignore_for_file: constant_identifier_names
enum BarStyle {
  NORMAL_STYLE, //常规通用
  DRAWER_STYLE, //抽屉页面
}

class BiuBiuButton extends StatefulWidget implements PreferredSizeWidget {
  final String text;
  final VoidCallback onPressed;
  final BarStyle style;
  const BiuBiuButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.style = BarStyle.NORMAL_STYLE});
  @override
  State<BiuBiuButton> createState() => _BiuBiuButtonState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuButtonState extends State<BiuBiuButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MAIN_ACTIVE_COLOR),
        ),
        child: BiuBiuText(widget.text,
                            style:  TextStyle(
                                fontSize: 18.sp)));
  }
}
