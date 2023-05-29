// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/core/config/app_singleton/app_singleton.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/config/storge/storage.dart';
import 'package:idchats_flutter/core/config/storge/types.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biubiu_modal_content.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_loading/biubiu_loading.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_modal/biubiu_modal.dart';
import 'package:idchats_flutter/core/widgets/biubiu_row_item.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_toast/biubiu_toast.dart';
import 'package:idchats_flutter/features/app/presentation/bloc/app_bloc.dart';
import 'package:idchats_flutter/features/setting_page/presentation/bloc/setting_page_bloc.dart';

class Body extends StatefulWidget {
  final bool isLoading;
  const Body({super.key, required this.isLoading});
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BiuBiuRowItem(
            text: S.of(context).setting_walletsManagement,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(0)).marginOnly(top: 12.h),
        BiuBiuRowItem(
            text: S.of(context).setting_language,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(1)).marginOnly(top: 12.h),
        BiuBiuRowItem(
            text: S.of(context).setting_currencyUnit,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(2)).marginOnly(top: 12.h),
        BiuBiuRowItem(
            text: S.of(context).setting_updates,
            icon: 'assets/images/icon_emailguanli.png',
            onTap: () => onTap(3)).marginOnly(top: 12.h),
      ],
    );
  }

  void onTap(index) {
    if (index == 0) {
      context.read<SettingPageBloc>().add(SettingPageEvent(CaseParams(
          eventName: EVENT_NAVIGATE_PUSH,
          data: {'routeName': Routes.spacePage, 'context': context})));
    } else {
      if (index == 1) {
        // BiuBiuLoading.show(context);
        String languageCode = APPSingleton().languageEntity.languageCode;
        String countryCode = APPSingleton().languageEntity.countryCode;
        int _selectIndex;
        if (countryCode.toLowerCase() == 'cn')
          _selectIndex = 0;
        else if (countryCode.toLowerCase() == 'tw')
          _selectIndex = 1;
        else if (countryCode.toLowerCase() == 'us')
          _selectIndex = 2;
        else
          _selectIndex = 2; // 默认值为0
        BiuBiuModal.show(
            context,
            BiuBiuModalContent(
              selectIndex: _selectIndex,
              onPressed: (index) => {
                if (index == 0)
                  {languageCode = 'zh', countryCode = 'CN'}
                else if (index == 1)
                  {languageCode = 'zh', countryCode = 'TW'}
                else
                  {languageCode = 'en', countryCode = 'US'},
                BiuBiuLoading.show(context),
                Future.delayed(const Duration(seconds: 1), () async {
                  await Storage.setLanguageEntiy(
                      S_LanguageEntity(languageCode, countryCode));
                  APPSingleton().languageEntity =
                      S_LanguageEntity(languageCode, countryCode);
                  context.read<AppBloc>().add(AppEvent(CaseParams(
                          eventName: EVENT_CHANGE_LAUNGE,
                          data: {
                            'languageCode': languageCode,
                            'countryCode': countryCode
                          })));
                  BiuBiuLoading.hide(context);
                  BiuBiuToast.showToast('切换语言成功');
                })
              },
              data: const ["简体中文", "繁體中文", "English"],
            ));
      }
    }
  }
}
