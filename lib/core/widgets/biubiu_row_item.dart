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
  const BiuBiuRowItem(
      {super.key,
      required this.text,
      required this.icon,
      this.arrow = 'assets/images/icon_tiaozhuan.png',
      this.style = RowItemStyle.NORMAL_STYLE});
  @override
  State<BiuBiuRowItem> createState() => _BiuBiuRowItemState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuRowItemState extends State<BiuBiuRowItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          color: ITEM_BACKGROUND_COLOR,
          height: 64.h,
          child: Padding(
            padding: EdgeInsets.fromLTRB(12.w, 0, 12.w, 0),
            child: InkWell(
                onTap: () => {},
                splashColor: Colors.white.withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Image.asset(
                        widget.icon,
                        width: 26.w,
                        height: 26.w,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 0, 12.w, 0),
                          child: Text(
                            widget.text,
                            style: TextStyle(
                                color: DEFAULT_NORMAL_TEXT_COLOR,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          )),
                    ]),
                    Image.asset(
                      widget.arrow,
                      width: 26.w,
                      height: 26.w,
                    ),
                  ],
                )),
          ),
        ));
  }
}
