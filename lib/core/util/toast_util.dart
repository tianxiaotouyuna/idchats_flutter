import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';

class ToastUtil {
  static void showToast(String message) {
   Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: ITEM_BACKGROUND_COLOR,
        textColor: Colors.white,
        fontSize: 16.sp
    );
  }
}
