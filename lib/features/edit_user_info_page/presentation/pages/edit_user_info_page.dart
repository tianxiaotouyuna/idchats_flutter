import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/util/util.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';

import '../../../../core/util/color_utils.dart';

class EditUserInfoPage extends StatelessWidget {
  const EditUserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BiuBiuStausBar(title: 'asd'),
      backgroundColor: ColorUtils.colorFromHex('#0F1526'),
      body: const Center(
        child:
          Text('data',style: TextStyle(color: DEFAULT_NORMAL_TEXT_COLOR),)
      ),
    );
  }
}
