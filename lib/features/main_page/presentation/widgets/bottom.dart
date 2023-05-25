import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biubiu_button.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';

import '../bloc/main_page_bloc.dart';
import 'bottom_info.dart';
import 'package:provider/provider.dart';

class Bottom extends StatefulWidget {
  final bool isLoading;
  final UserInfoEntity userInfo;
  const Bottom({super.key, required this.userInfo, required this.isLoading});
  @override
  State<Bottom> createState() => _bottomState();
}

// ignore: camel_case_types
class _bottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 10.w, 20.w, 20.w),
          child: Column(children: [
            BottomInfo(isLoading: widget.isLoading, userInfo: widget.userInfo),
            Padding(
                padding: EdgeInsets.fromLTRB(0.w, 10.w, 0.w, 0.w),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BiuBiuButton(text: S.current.main_walletFeature, onPressed: tapWallet),
                          BiuBiuButton(text: S.current.main_chatFeature, onPressed: tapChat)
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BiuBiuButton(text: S.current.main_walletFeature, onPressed: tapWallet),
                          BiuBiuButton(text:S.current.main_walletFeature, onPressed: tapWallet)
                        ])
                  ],
                )),
          ])),
    );
  }

  void tapEdit() {
    context.read<MainPageBloc>().add(const MainPageEvent(CaseParams(
        eventName: EVENT_NAVIGATE_PUSH,
        data: {'routeName': Routes.editUserInfo})));
  }

  void tapChat() {
    context.read<MainPageBloc>().add(const MainPageEvent(
            CaseParams(eventName: EVENT_NAVIGATE_PUSH, data: {
          'routeName': Routes.chatPage,
          'params': const {
            'toAddress': '0x68557cc1498bcd8f70269f5d0b1a305b8882ede3'
          }
        })));
  }

  void tapWallet() {
    context.read<MainPageBloc>().add(const MainPageEvent(CaseParams(
        eventName: EVENT_NAVIGATE_PUSH,
        data: {'routeName': Routes.walletPage})));
  }
}
