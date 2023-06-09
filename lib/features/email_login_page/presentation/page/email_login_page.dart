import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/email_login_page/presentation/bloc/email_login_page_bloc.dart';
import 'package:idchats_flutter/features/email_login_page/domain/repository/request_types.dart';
import 'package:idchats_flutter/features/email_login_page/presentation/widgets/top.dart';
import 'package:idchats_flutter/features/email_login_page/presentation/widgets/body.dart';
import 'package:idchats_flutter/features/email_login_page/presentation/widgets/bottom.dart';
import 'package:idchats_flutter/injection_container.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';

	class EmailLoginPage extends StatelessWidget {
	  const EmailLoginPage({super.key});
	  @override
	  Widget build(BuildContext context) {
		return buildBody(context);
	  }
	
	  BlocProvider<EmailLoginPageBloc> buildBody(BuildContext context) {
		return BlocProvider(
			create: (_) => sl<EmailLoginPageBloc>(),
			child:
				BlocBuilder<EmailLoginPageBloc, EmailLoginPageState>(builder: (context, state) {
			  if (state is EmailLoginPageInitial) {
				context.read<EmailLoginPageBloc>().add(EmailLoginPageEvent(
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
					title: S.of(context).common_emailLogin,
					style: BarStyle.NORMAL_STYLE,
				  ),
              	  backgroundColor: MAIN_BACKGROUND_COLOR,
				  body: Padding(padding: EdgeInsets.fromLTRB(20.w
          		  , 12.h, 20.w, 0),
          		  child:
					// Body(
					//   isLoading: state is Loaded ? false : true,
					// ).marginAll(20),
					Column(
					children: [
					  Top(
						isLoading: state is Loaded ? false : true,
					  ),
					  Bottom(
						isLoading: state is Loaded ? false : true,
					  ),
					],
				  ),
          ));
			}));
	  }
}