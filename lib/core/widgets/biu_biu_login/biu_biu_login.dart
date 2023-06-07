import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_login/login_pop_content.dart';
import 'package:idchats_flutter/core/widgets/biubiu_button.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_modal/biubiu_modal.dart';

class BiuBiuLogin extends StatelessWidget {

  const BiuBiuLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BiuBiuButton(text: S.of(context).side_campaign, onPressed: loginClick(context));
  }

  loginClick(context){
        BiuBiuModal.show(context, const BiuBiuLoginContent());
  }
}
