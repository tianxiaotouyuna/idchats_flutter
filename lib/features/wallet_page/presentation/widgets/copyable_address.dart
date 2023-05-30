import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';

import 'copy_button.dart';

class CopyableAddress extends StatelessWidget {
  const CopyableAddress({Key? key, required this.address}) : super(key: key);

  final String? address;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BiuBiuText(address ?? ''),
          const SizedBox(height: 10),
          CopyButton(
            text:  const BiuBiuText('Copy address').getText(),
            value: address??'Copy null error',
          ),
        ],
      ),
    );
  }
}
