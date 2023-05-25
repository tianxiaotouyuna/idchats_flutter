import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/color_utils.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import '../../../../injection_container.dart';
import '../../domain/repositories/request_types.dart';
import '../widgets/bottom.dart';
import '../widgets/top.dart';

class MainPage extends StatelessWidget {
  final GlobalKey<InnerDrawerState> parentKey;
  const MainPage({required this.parentKey, super.key});
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<MainPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<MainPageBloc>(),
        child:
            BlocBuilder<MainPageBloc, MainPageState>(builder: (context, state) {
          if (state is MainPageInitial) {
            context.read<MainPageBloc>().add(MainPageEvent(
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
              appBar: BiuBiuStausBar(
                title: '',
                data: {'parentKey': parentKey},
                style: BarStyle.DRAWER_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: Column(
                children: [
                  Top(
                    isLoading: state is Loaded ? false : true,
                    data: state is Loaded ? state.nfts : [],
                  ),
                  Bottom(
                    isLoading: state is Loaded ? false : true,
                    userInfo: state is Loaded
                        ? state.userInfo
                        : const UserInfoEntity(
                            faceUrl: '',
                            name: '',
                            contractAddress: '',
                            ownerCount: 3),
                  ),
                ],
              ));
        }));
  }
}
