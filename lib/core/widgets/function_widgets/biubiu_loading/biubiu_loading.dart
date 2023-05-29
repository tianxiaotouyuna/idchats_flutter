import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BiuBiuLoading {
  static bool _isLoading = false;

  static void show(BuildContext context) {
    _isLoading = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: Lottie.asset(
                'lib/core/widgets/function_widgets/biubiu_loading/loading.json',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  static void hide(BuildContext context) {
    _isLoading = false;
    Navigator.of(context).pop();
  }

  static bool isLoading() {
    return _isLoading;
  }

}
