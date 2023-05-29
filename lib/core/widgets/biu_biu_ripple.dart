// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiuBiuRipple extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const BiuBiuRipple({super.key, required this.onPressed, required this.child});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: child,
        ).withRoundCorners(radius: 16.r)
    );
  }
}
