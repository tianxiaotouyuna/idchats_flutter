// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_login/login_pop_content.dart';
import 'package:idchats_flutter/core/widgets/biubiu_button.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_modal/biubiu_modal.dart';

class BiuBiuLogin extends StatefulWidget {
  BuildContext pageContent;
  BiuBiuLogin({super.key, required this.pageContent});
  @override
  State<BiuBiuLogin> createState() => _BiuBiuLoginState();
}

class _BiuBiuLoginState extends State<BiuBiuLogin> {
  @override
  Widget build(BuildContext context) {
    return BiuBiuButton(
        text: S.of(context).common_login, onPressed: () => loginClick(context));
  }

  loginClick(context) {
    BiuBiuModal.show(
        widget.pageContent,
        BiuBiuLoginContent(
          pageContent: widget.pageContent,
        ));
  }
}
