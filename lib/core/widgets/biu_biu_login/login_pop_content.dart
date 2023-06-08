// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_pinput.dart';
import 'package:idchats_flutter/core/widgets/biubiu_button.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_loading/biubiu_loading.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_modal/biubiu_modal.dart';
import 'package:idchats_flutter/features/edit_user_info_page/presentation/bloc/edit_user_info_page_bloc.dart';

// ignore_for_file: constant_identifier_names
enum ContentStyle {
  LOGIN_TYPE_STYLE, //登录方式
  PINPUT_STYLE, //验证码
}

class BiuBiuLoginContent extends StatefulWidget implements PreferredSizeWidget {
  final ContentStyle style;
  final BuildContext pageContent;

  const BiuBiuLoginContent(
      {super.key,
      this.style = ContentStyle.LOGIN_TYPE_STYLE,
      required this.pageContent});
  @override
  State<BiuBiuLoginContent> createState() => _BiuBiuLoginContentState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuLoginContentState extends State<BiuBiuLoginContent> {
  @override
  Widget build(BuildContext context) {
    if (widget.style == ContentStyle.LOGIN_TYPE_STYLE)
      return renderLoginType();
    else if (widget.style == ContentStyle.PINPUT_STYLE)
      return renderPinput();
    else
      return renderPinput();
  }

  Widget renderLoginType() {
    List<String> data = [
      S.of(context).common_emailLogin,
      S.of(context).common_socialLogin,
      'Wallect Connect'
    ];
    final emailInput = TextEditingController(text: 'your.email@example.com');
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: emailInput,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                )).toCenter();
          } else
            return BiuBiuButton(
                    text: S.of(context).common_emailLogin,
                    onPressed: () => loginWithEmail(context, emailInput.text))
                .marginAll(20);
        }).toFullScreen();
  }

  Widget renderPinput() {
    return BiuBiuPinput(
        onCompleted: () async => {
              BiuBiuLoading.show(context),
              await Future.delayed(const Duration(seconds: 2), () async {
                BiuBiuLoading.hide(context);
                BiuBiuModal.hide(context);
                widget.pageContent.read<EditUserInfoPageBloc>().add(
                        const EditUserInfoPageEvent(CaseParams(
                            eventName: EVENT_CREATE_WALLECT_FINISH,
                            data: {
                        })));
              })
            }).toFullScreen().alignAtTopCenter();
  }

  void loginWithEmail(context, email) {
    BiuBiuLoading.show(context);

    widget.pageContent.read<EditUserInfoPageBloc>().add(EditUserInfoPageEvent(
        CaseParams(
            eventName: EVENT_GET_EMAIL_CODE,
            data: {'routeName': Routes.emailLoginPage, 'email': email})));
    Future.delayed(const Duration(seconds: 1), () async {
      BiuBiuLoading.hide(context);
      BiuBiuModal.hide(context);
      BiuBiuModal.show(
          widget.pageContent,
          BiuBiuLoginContent(
            pageContent: widget.pageContent,
            style: ContentStyle.PINPUT_STYLE,
          ));
      // if (index > 0) return;
      // widget.pageContent.read<EditUserInfoPageBloc>().add(EditUserInfoPageEvent(
      //     CaseParams(
      //         eventName: EVENT_NAVIGATE_PUSH,
      //         data: {'routeName': Routes.emailLoginPage, 'context': context})));
    });
  }
}
