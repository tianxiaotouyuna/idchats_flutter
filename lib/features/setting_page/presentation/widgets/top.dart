import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/toast_util.dart';
import 'package:idchats_flutter/core/widgets/biubiu_row_item.dart';
import 'package:idchats_flutter/features/setting_page/presentation/bloc/setting_page_bloc.dart';
import 'package:intl/intl.dart';

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
        BiuBiuRowItem(
            text: S.current.setting_walletsManagement,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(0)).marginOnly(top: 12.h),
        BiuBiuRowItem(
            text: S.current.setting_language,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(1)).marginOnly(top: 12.h),
        BiuBiuRowItem(
            text: S.current.setting_currencyUnit,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(2)).marginOnly(top: 12.h),
        BiuBiuRowItem(
            text: S.current.setting_updates,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(3)).marginOnly(top: 12.h),
      ],
    );
  }

  void onTap(index) {
    if (index == 0) {
      context.read<SettingPageBloc>().add(const SettingPageEvent(CaseParams(
          eventName: EVENT_NAVIGATE_PUSH,
          data: {'routeName': Routes.spacePage})));
    } else {
      if (index == 1) {
        S.load(const Locale('zh', 'TW'));
        Intl.getCurrentLocale();
        ToastUtil.showToast('切换语言成功');

      }
    }
  }
}
