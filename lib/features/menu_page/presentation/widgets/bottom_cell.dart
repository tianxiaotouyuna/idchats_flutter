import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';

class BottomCell extends StatelessWidget {
  final String text;
  final String icon;
  final String screenName;

  const BottomCell(
      {super.key,
      required this.text,
      required this.icon,
      required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(1.0.w),
          child: InkWell(
              // ignore: sort_child_properties_last
              child: Padding(
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
                      BiuBiuText(text,
                          style: TextStyle(
                              fontSize: 18.sp)),
                    ],
                  )),
              onTap: () => {pushNamed(context, screenName)},
              splashColor: Colors.white.withOpacity(0.5)),
        ));
  }

  void pushNamed(context, routeName, {params}) {
    Navigator.of(context).pushNamed(routeName, arguments: params ?? {});
  }
}
