import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';
import 'package:idchats_flutter/features/edit_user_info_page/presentation/bloc/edit_user_info_page_bloc.dart';
import 'package:idchats_flutter/features/edit_user_info_page/presentation/widgets/body.dart';
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
        child: BlocBuilder<EditUserInfoPageBloc, EditUserInfoPageState>(
            builder: (context, state) {
          if (state is CreateFinished) {
            return Scaffold(
              appBar:  BiuBiuStausBar(
                title: S.of(context).main_edit,
                style: BarStyle.NORMAL_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: const Body(createFinished: true,));
        }
          return Scaffold(
              appBar:  BiuBiuStausBar(
                title: S.of(context).main_edit,
                style: BarStyle.NORMAL_STYLE,
              ),
              backgroundColor: MAIN_BACKGROUND_COLOR,
              body: const Body());
        }));
  }
}
