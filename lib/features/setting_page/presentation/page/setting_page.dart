import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/setting_page/presentation/bloc/setting_page_bloc.dart';
import 'package:idchats_flutter/features/setting_page/domain/repository/request_types.dart';
import 'package:idchats_flutter/features/setting_page/presentation/widgets/top.dart';
import 'package:idchats_flutter/features/setting_page/presentation/widgets/bottom.dart';
import 'package:idchats_flutter/injection_container.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<SettingPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<SettingPageBloc>(),
        child: BlocBuilder<SettingPageBloc, SettingPageState>(
            builder: (context, state) {
          if (state is SettingPageInitial) {
            context.read<SettingPageBloc>().add(SettingPageEvent(
                    CaseParams(eventName: US_GET_INIT_SOURCE, data: {
                  'context': context,
                  'data': const GetInitParams(
                      getNftParams: GetNftParams(
                          chains: 'ethereum-goerli',
                          address:
                              '0x7822d01737246a13f7979b9567e8d916f04ea074'),
                      getUserInfoParams: GetUserInfoParams(
                          userId: '0x7822d01737246a13f7979b9567e8d916f04ea074'))
                })));
          }

          return Scaffold(
              appBar:  BiuBiuStausBar(
                title: S.current.side_setting,
                style: BarStyle.NORMAL_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 0),
                  child: Column(
                    children: [
                      Top(
                        isLoading: state is Loaded ? false : true,
                      ),
                      Bottom(
                        isLoading: state is Loaded ? false : true,
                      ),
                    ],
                  )));
        }));
  }
}
