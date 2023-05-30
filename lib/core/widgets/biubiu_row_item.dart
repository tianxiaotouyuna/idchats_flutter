// ignore: depend_on_referenced_packages
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';
import '../config/constants/app_constants.dart';

// ignore_for_file: constant_identifier_names
enum RowItemStyle {
  NORMAL_STYLE, //常规通用
  Language_STYLE, //语言弹框
}

class BiuBiuRowItem extends StatefulWidget implements PreferredSizeWidget {
  final bool isSelected;
  final String? icon;
  final String text;
  final String arrow;
  final RowItemStyle style;
  final VoidCallback onTap;
  const BiuBiuRowItem(
      {super.key,
      required this.text,
      this.icon,
      this.arrow = 'assets/images/icon_tiaozhuan.png',
      this.style = RowItemStyle.NORMAL_STYLE, required this.onTap,  this.isSelected=false});
  @override
  State<BiuBiuRowItem> createState() => _BiuBiuRowItemState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuRowItemState extends State<BiuBiuRowItem> {
  @override
  Widget build(BuildContext context) {
    return widget.style==RowItemStyle.NORMAL_STYLE?normalRow():laguageRow();
  }
  Widget normalRow(){
    return  Container(
          color: ITEM_BACKGROUND_COLOR,
          height: 64.h,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    BiuBiuText(
                      widget.text,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ).paddingLTRB(8.w, 0, 12.w, 0),
                  ]),
                  Image.asset(
                    widget.arrow,
                    width: 26.w,
                    height: 26.w,
                  ),
                ],
              ).paddingLTRB(12.w, 0, 12.w, 0),
        ).withRoundCorners(radius: 16.r).onTap(widget.onTap);
  }


  Widget laguageRow(){
    return  Container(
          color: ITEM_BACKGROUND_COLOR,
          height: 64.h,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    BiuBiuText(
                      widget.text,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ).paddingLTRB(8.w, 0, 12.w, 0),
                  ]),
                  widget.isSelected?Image.asset(
                    widget.arrow,
                    width: 26.w,
                    height: 26.w,
                  ):Container(),
                ],
              ).paddingLTRB(12.w, 0, 12.w, 0),
        ).withRoundCorners(radius: 16.r).onTap(widget.onTap);
  }
}
