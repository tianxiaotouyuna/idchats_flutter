// ignore: depend_on_referenced_packages
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/constants/app_constants.dart';

// ignore_for_file: constant_identifier_names
enum RowItemStyle {
  NORMAL_STYLE, //常规通用
  DRAWER_STYLE, //抽屉页面
}

class BiuBiuRowItem extends StatefulWidget implements PreferredSizeWidget {
  final String icon;
  final String text;
  final String arrow;
  final RowItemStyle style;
  final VoidCallback onTap;
  const BiuBiuRowItem(
      {super.key,
      required this.text,
      required this.icon,
      this.arrow = 'assets/images/icon_tiaozhuan.png',
      this.style = RowItemStyle.NORMAL_STYLE, required this.onTap});
  @override
  State<BiuBiuRowItem> createState() => _BiuBiuRowItemState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuRowItemState extends State<BiuBiuRowItem> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          color: ITEM_BACKGROUND_COLOR,
          height: 64.h,
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset(
                      widget.icon,
                      width: 26.w,
                      height: 26.w,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                          color: DEFAULT_NORMAL_TEXT_COLOR,
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
}
