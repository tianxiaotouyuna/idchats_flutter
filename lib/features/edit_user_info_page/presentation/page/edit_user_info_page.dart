import 'package:flutter/material.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:flutter_inner_drawer/inner_drawer.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/color_utils.dart';
	import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/presentation/bloc/edit_user_info_page_bloc.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/domain/repository/request_types.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/presentation/widgets/top.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/presentation/widgets/bottom.dart';
	import 'package:idchats_flutter/injection_container.dart';

	class EditUserInfoPage extends StatelessWidget {
	  const EditUserInfoPage({super.key});
	  @override
	  Widget build(BuildContext context) {
		return buildBody(context);
	  }
	
	  BlocProvider<EditUserInfoPageBloc> buildBody(BuildContext context) {
		return BlocProvider(
			create: (_) => sl<EditUserInfoPageBloc>(),
			child:
				BlocBuilder<EditUserInfoPageBloc, EditUserInfoPageState>(builder: (context, state) {
			  if (state is EditUserInfoPageInitial) {
				context.read<EditUserInfoPageBloc>().add(EditUserInfoPageEvent(
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
					title: 'edit_user_info_page',
					style: BarStyle.NORMAL_STYLE,
				  ),
				  backgroundColor: ColorUtils.colorFromHex('#0F1526'),
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