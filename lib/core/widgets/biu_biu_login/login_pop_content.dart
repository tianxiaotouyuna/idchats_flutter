import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_trastion.dart';
import 'package:idchats_flutter/core/widgets/biubiu_button.dart';
import 'package:idchats_flutter/core/widgets/biubiu_row_item.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_modal/biubiu_modal.dart';

// ignore_for_file: constant_identifier_names
enum ContentStyle {
  Language_STYLE, //常规通用
  DRAWER_STYLE, //抽屉页面
}

class BiuBiuLoginContent extends StatefulWidget implements PreferredSizeWidget {
  final ContentStyle? style;

  const BiuBiuLoginContent({super.key, this.style});
  @override
  State<BiuBiuLoginContent> createState() => _BiuBiuLoginContentState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuLoginContentState extends State<BiuBiuLoginContent> {
  List<String> data=['邮箱登录','谷歌登录','Wallect Connect'];
  @override
  Widget build(BuildContext context) {
    return 
    // Column( children: [
    //   BiuBiuButton(text: '邮箱登录', onPressed: () => loginWithEmail()),
    //   BiuBiuButton(text: '谷歌登录', onPressed: () => loginWithEmail())
    //       .marginAll(20),
    //   BiuBiuButton(text: 'Wallect Connect', onPressed: () => loginWithEmail())
    //       .marginAll(20),
    // ]);
    ListView.builder(
      shrinkWrap: true, 
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
        return  BiuBiuButton(text: data[index], onPressed: () => loginWithEmail())
          .marginAll(20);
        });
  }

  void loginWithEmail() {}
}
