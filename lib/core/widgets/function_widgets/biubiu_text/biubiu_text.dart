import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';

class BiuBiuText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  static final TextStyle _myTextStyle = TextStyle(
    fontFamily: 'MyFont-Regular',
    fontSize: 16.0.sp,
    fontWeight: FontWeight.normal,
    color: DEFAULT_NORMAL_TEXT_COLOR
  );

  const BiuBiuText(this.text, {Key? key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildText();
  }

  Text buildText() {
    TextStyle mergedStyle = _myTextStyle.merge(style);
    return 
     Text(text, style: mergedStyle);
  }

  Text getText() {
    return buildText();
  }
}
