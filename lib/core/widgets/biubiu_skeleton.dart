import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names
const Color Dark_Base =Color.fromRGBO(255,255, 255, 0.1);
const Color Dark_Hight =Color.fromRGBO(255,255, 255, 0.2);
const Color Light_Base =Color.fromRGBO(255,255, 255, 0.2);
const Color Light_Hight =Color.fromRGBO(255,255, 255, 0.3);

enum SkeletonStyle {
  Dark_STYLE, //常规通用
  Light_STYLE, //抽屉页面
}

class BiuBiuSkeleton extends StatefulWidget {
  final double width;
  final double height;
  final double radius;
  final Widget? child;
  final SkeletonStyle style;

  const BiuBiuSkeleton(
      {super.key,
      this.child,
      this.width = 0,
      this.height = 0,
      required this.radius,
      this.style = SkeletonStyle.Dark_STYLE});

  @override
  State<BiuBiuSkeleton> createState() => _BiuBiuSkeletonState();
}

class _BiuBiuSkeletonState extends State<BiuBiuSkeleton> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Dark_Base;
    Color baseHight = Dark_Hight;
    if (widget.style == SkeletonStyle.Light_STYLE) {
      baseColor = Light_Base;
      baseHight = Light_Hight;
    }
    return widget.height != 0 && widget.width != 0
        ? Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: baseHight,
            child: _chid(baseColor,widget.radius),
          )
        : Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: baseHight,
            child:Container(
              color: baseColor,
              child: widget.child?? Container()) );
  }

  Widget _chid(baseColor, radius) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          width: widget.width,
          height: widget.height,
          color: baseColor,
        ));
  }
}
