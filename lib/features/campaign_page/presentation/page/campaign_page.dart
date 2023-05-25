import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/color_utils.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/campaign_page/presentation/bloc/campaign_page_bloc.dart';
import 'package:idchats_flutter/features/campaign_page/domain/repository/request_types.dart';
import 'package:idchats_flutter/features/campaign_page/presentation/widgets/top.dart';
import 'package:idchats_flutter/features/campaign_page/presentation/widgets/bottom.dart';
import 'package:idchats_flutter/injection_container.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({super.key});
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<CampaignPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<CampaignPageBloc>(),
        child: BlocBuilder<CampaignPageBloc, CampaignPageState>(
            builder: (context, state) {
          if (state is CampaignPageInitial) {
            context.read<CampaignPageBloc>().add(CampaignPageEvent(
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
                title: S.current.side_campaign,
                style: BarStyle.NORMAL_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: Column(
                children: [
                  Top(
                    isLoading: state is Loaded ? false : true,
                  ),
                  Bottom(
                    isLoading: state is Loaded ? false : true,
                  ),
                ],
              ));
        }));
  }
}
