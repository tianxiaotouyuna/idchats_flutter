import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
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
          child:  BiuBiuRowItem(text: S.current.my_walletsManagement, icon: 'assets/images/icon_emailguanli.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child:  BiuBiuRowItem(text:S.current.my_language, icon: 'assets/images/icon_emailguanli.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child:  BiuBiuRowItem(text: S.current.my_currencyUnit, icon: 'assets/images/icon_emailguanli.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: BiuBiuRowItem(text: S.current.my_updates, icon: 'assets/images/icon_emailguanli.png'),
        ),
      ],
    );
  }
}
