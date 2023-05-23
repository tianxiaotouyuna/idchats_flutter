import 'package:flutter/material.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:flutter_inner_drawer/inner_drawer.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/color_utils.dart';
	import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
	import 'package:idchats_flutter/features/chat_page/presentation/bloc/chat_page_bloc.dart';
	import 'package:idchats_flutter/features/chat_page/domain/repository/request_types.dart';
	import 'package:idchats_flutter/features/chat_page/presentation/widgets/top.dart';
	import 'package:idchats_flutter/features/chat_page/presentation/widgets/bottom.dart';
	import 'package:idchats_flutter/injection_container.dart';

	class ChatPage extends StatelessWidget {
	  final GlobalKey<InnerDrawerState> parentKey;
	  const ChatPage({required this.parentKey, super.key});
	  @override
	  Widget build(BuildContext context) {
		return buildBody(context);
	  }
	
	  BlocProvider<ChatPageBloc> buildBody(BuildContext context) {
		return BlocProvider(
			create: (_) => sl<ChatPageBloc>(),
			child:
				BlocBuilder<ChatPageBloc, ChatPageState>(builder: (context, state) {
			  if (state is ChatPageInitial) {
				context.read<ChatPageBloc>().add(ChatPageEvent(
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
					data: {'parentKey': parentKey},
					style: BarStyle.DRAWER_STYLE,
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