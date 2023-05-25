import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/widgets/biubiu_row_item.dart';

class Top extends StatefulWidget {
  final bool isLoading;
  const Top({super.key, required this.isLoading});
  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: const BiuBiuRowItem(text: '邮箱管理', icon: 'assets/images/icon_emailguanli.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: const BiuBiuRowItem(text: '语言', icon: 'assets/images/icon_emailguanli.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: const BiuBiuRowItem(text: '货币单位', icon: 'assets/images/icon_emailguanli.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: const BiuBiuRowItem(text: '检查更新', icon: 'assets/images/icon_emailguanli.png'),
        ),
      ],
    );
  }
}
