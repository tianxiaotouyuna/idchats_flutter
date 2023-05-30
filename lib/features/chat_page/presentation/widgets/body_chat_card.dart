import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_ripple.dart';
import 'package:idchats_flutter/core/widgets/biubiu_image.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';

class BodyChatCard extends StatefulWidget implements PreferredSizeWidget {
  final dynamic data;
  final Function onPressed;
  const BodyChatCard(
      {super.key, this.data, required this.onPressed});
  @override
  State<BodyChatCard> createState() => _BodyChatCardState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BodyChatCardState extends State<BodyChatCard> {
  @override
  Widget build(BuildContext context) {
    return BiuBiuRipple(onPressed: ()=>{}, child: Row(children: [
            BiuBiuImage(
                url: widget.data["image_url"],
                radius: 16.r,
                width: 70.w,
                height: 70.w,
                onPressed: () => {}),
            BiuBiuText(
              widget.data["name"],
            ).marginOnly(left: 10)
          ]).paddingSymmetric(horizontal: 16.h,vertical: 6.h));
  }
}
