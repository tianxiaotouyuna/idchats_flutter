import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import 'package:idchats_flutter/features/main_page/presentation/widgets/loading_widget.dart';
import 'package:idchats_flutter/core/util/utils.dart';
import 'package:idchats_flutter/features/main_page/presentation/widgets/refresh_control.dart';
import 'package:idchats_flutter/features/main_page/presentation/widgets/user_info_display.dart';

import '../../../../injection_container.dart';
import '../widgets/main_page_carousel.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  BlocProvider<MainPageBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<MainPageBloc>(),
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Main Page'),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: ColorUtil.fromHex('#0F1526'),
            body:  BlocBuilder<MainPageBloc, MainPageState>(
                builder: (context, state) {
                 if (state is Loading) {
                    return const LoadingWidget();
                  } else if (state is Refreshed) {
                    return UserInfoDisplay(userInfoEntity: state.userInfoEntity);
                  } 
                  return MainPageCarouse();
                  // return SizedBox(
                  //   height: MediaQuery.of(context).size.height / 3,
                  //   child: const Placeholder(),
                  // );
                },
              ),
            floatingActionButton: const RefreshControl()));
  }
}
