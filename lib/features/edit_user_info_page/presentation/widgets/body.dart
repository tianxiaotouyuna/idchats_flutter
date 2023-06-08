import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_login/biu_biu_login.dart';
import 'package:idchats_flutter/core/widgets/biubiu_button.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_loading/biubiu_loading.dart';
import 'package:idchats_flutter/features/edit_user_info_page/presentation/bloc/edit_user_info_page_bloc.dart';

class Body extends StatefulWidget {
  final bool createFinished;
  const Body({super.key, this.createFinished = false});
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return widget.createFinished
        ? Column(mainAxisAlignment:MainAxisAlignment.center,children: [
            const Text('0x33333101933329',style: TextStyle(color: Colors.white),),
            BiuBiuButton(text: '退出登录', onPressed: () async => {
            BiuBiuLoading.show(context),
                 await Future.delayed(const Duration(seconds: 2), () async {
                BiuBiuLoading.hide(context);
                context.read<EditUserInfoPageBloc>().add(
                        const EditUserInfoPageEvent(CaseParams(
                            eventName: EVENT_LOGIN_OUT,
                            data: {
                        })));
              })
            })
          ]).toFullScreen()
        : BiuBiuLogin(pageContent: context).toCenter();
  }
}
