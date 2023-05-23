import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/constants/app_constants.dart';

class BottomCell extends StatelessWidget {
  final String text;
  final String icon;

  const BottomCell({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(1.0.w),
          child: InkWell(
            child:Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Row(
              children: [
                // 左侧的图标
                Image.asset(
                  icon,
                  width: 20.w,
                  height: 20.w,
                ),
                SizedBox(width: 8.w), // 添加一些间距
                // 左侧的文字
                Text(text,
                    style: TextStyle(
                        fontSize: 18.sp, color: DEFAULT_NORMAL_TEXT_COLOR)),
              ],
            )
            ),
        onTap: () => {},
        splashColor: Colors.white.withOpacity(0.5)
          ),
        ));
  }
}
