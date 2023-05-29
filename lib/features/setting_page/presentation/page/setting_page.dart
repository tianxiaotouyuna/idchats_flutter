import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/setting_page/presentation/bloc/setting_page_bloc.dart';
import 'package:idchats_flutter/features/setting_page/presentation/widgets/body.dart';
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
          return Scaffold(
              appBar:  BiuBiuStausBar(
                title: S.of(context).side_setting,
                style: BarStyle.NORMAL_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 0),
                  child: 
                      Body(
                        isLoading: state is Loaded ? false : true,
                      )
                  ));
        }));
  }
}
