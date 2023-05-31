import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/chat_page/presentation/bloc/chat_page_bloc.dart';
import 'package:idchats_flutter/features/chat_page/presentation/widgets/body.dart';
import 'package:idchats_flutter/injection_container.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<ChatPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<ChatPageBloc>(),
        child:
            BlocBuilder<ChatPageBloc, ChatPageState>(builder: (context, state) {

          return Scaffold(
              appBar:  BiuBiuStausBar(
                title: S.of(context).side_message,
                style: BarStyle.NORMAL_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: 
                  Body(
                    isLoading: state is Loaded ? false : true,
                  ).marginOnly(top: 20,left: 20,right: 20),
              );
        }));
  }
}
