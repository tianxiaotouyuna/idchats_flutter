import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_trastion.dart';
import 'package:idchats_flutter/core/widgets/biubiu_row_item.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_modal/biubiu_modal.dart';

// ignore_for_file: constant_identifier_names
enum ContentStyle {
  Language_STYLE, //常规通用
  DRAWER_STYLE, //抽屉页面
}

class BiuBiuModalContent extends StatefulWidget implements PreferredSizeWidget {
  final List data;
  final int selectIndex;
  final Function onPressed;
  final ContentStyle style;
  const BiuBiuModalContent(
      {super.key,
      required this.onPressed,
      this.style = ContentStyle.Language_STYLE,
      required this.data,
      this.selectIndex = 0});
  @override
  State<BiuBiuModalContent> createState() => _BiuBiuModalContentState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuModalContentState extends State<BiuBiuModalContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, 
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context, int index) {
        return BiuBiuFade(child: BiuBiuRowItem(
              style: RowItemStyle.Language_STYLE,
              isSelected: widget.selectIndex == index,
              text: widget.data[index],
              onTap: () =>{
                BiuBiuModal.hide(context),
              widget.onPressed(index),
              }, 
              arrow: 'assets/images/icon_xuanzhong.png',
            ).marginOnly(top: 12.h)
        ) ;
        });
  }
}
