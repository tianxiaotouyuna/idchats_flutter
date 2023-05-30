import 'package:awesome_extensions/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_nft_entity.dart';
import 'package:idchats_flutter/features/nft_detail_page/presentation/bloc/nft_detail_page_bloc.dart';
import 'package:idchats_flutter/features/nft_detail_page/domain/repository/request_types.dart';
import 'package:idchats_flutter/features/nft_detail_page/presentation/widgets/body.dart';
import 'package:idchats_flutter/injection_container.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';

class NftDetailPage extends StatelessWidget {
  final UserNftEntity? entity;
  const NftDetailPage({super.key,  this.entity});
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<NftDetailPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<NftDetailPageBloc>(),
        child: BlocBuilder<NftDetailPageBloc, NftDetailPageState>(
            builder: (context, state) {
          if (state is NftDetailPageInitial) {
            context.read<NftDetailPageBloc>().add(NftDetailPageEvent(
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
              appBar: const BiuBiuStausBar(
                title: '',
                style: BarStyle.CANCLE_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 0),
                child: Body(
                  isLoading: state is Loaded ? false : true,
                  entity: entity,
                ).marginAll(20),
              ));
        }));
  }
}
