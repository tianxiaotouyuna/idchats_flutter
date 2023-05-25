import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/features/menu_page/presentation/bloc/menu_page_bloc.dart';
import 'package:idchats_flutter/features/menu_page/domain/repository/request_types.dart';
import 'package:idchats_flutter/features/menu_page/presentation/widgets/bottom_cell.dart';
import 'package:idchats_flutter/features/menu_page/presentation/widgets/header.dart';
import 'package:idchats_flutter/injection_container.dart';
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<MenuPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<MenuPageBloc>(),
        child:
            BlocBuilder<MenuPageBloc, MenuPageState>(builder: (context, state) {
          if (state is MenuPageInitial) {
            context.read<MenuPageBloc>().add(MenuPageEvent(
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
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: ListView(
                children: [
                  Header(
                      data: const {'name': '测试1号', 'address': '0xdd3333333e6'}),
                     BottomCell(
                    screenName: Routes.messagePage,
                    text:S.of(context).side_message,
                    icon: 'assets/images/xiaoxi_n.png',
                  ),
                   BottomCell(
                    screenName: Routes.mintPage,
                    text:S.of(context).side_mint,
                    icon: 'assets/images/icon_copy.png',
                  ),
                   BottomCell(
                    screenName: Routes.campaignPage,
                    text:S.of(context).side_campaign,
                    icon: 'assets/images/bianwan_n.png',
                  ),
                   BottomCell(
                    screenName: Routes.spacePage,
                    text:S.of(context).side_space,
                    icon: 'assets/images/kongjian_n.png',
                  ),
                   BottomCell(
                    screenName: Routes.applicationPage,
                    text:S.of(context).side_application,
                    icon: 'assets/images/icon_copy.png',
                  ),
                   BottomCell(
                    screenName: Routes.settingPage,
                    text:S.of(context).side_setting,
                    icon: 'assets/images/icon_copy.png',
                  ),
                ],
              ));
        }));
  }
}
