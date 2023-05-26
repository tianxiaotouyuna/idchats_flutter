import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/widgets/biubiu_image.dart';

class BodyChatCard extends StatefulWidget implements PreferredSizeWidget {
  final dynamic data;
  const BodyChatCard(
      {super.key, this.data});
  @override
  State<BodyChatCard> createState() => _BodyChatCardState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BodyChatCardState extends State<BodyChatCard> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
            BiuBiuImage(
                url: widget.data["image_url"],
                radius: 16.r,
                width: 70.w,
                height: 70.w,
                onPressed: () => {}),
            Text(
              widget.data["name"],
              style: const TextStyle(color: DEFAULT_NORMAL_TEXT_COLOR),
            ).marginOnly(left: 10)
          ]).paddingSymmetric(horizontal: 16.h,vertical: 6.h);
  }
}
