
import 'package:flutter/material.dart';
import 'package:idchats_flutter/features/menu_page/presentation/widgets/bottom_cell.dart';
import 'package:idchats_flutter/features/menu_page/presentation/widgets/header.dart';
import 'package:idchats_flutter/core/util/util.dart';

import '../../../../core/util/color_utils.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.colorFromHex('#0F1526'),
      body: ListView(
        children: [
          Header(data: const {'name':'测试1号','address':'0xdd3333333e6'}),
          const BottomCell(text: '消息',icon: 'assets/images/xiaoxi_n.png',),
          const BottomCell(text: 'MINT',icon: 'assets/images/icon_copy.png',),
          const BottomCell(text: '活动',icon: 'assets/images/bianwan_n.png',),
          const BottomCell(text: '空间',icon: 'assets/images/kongjian_n.png',),
          const BottomCell(text: '应用',icon: 'assets/images/icon_copy.png',),
          const BottomCell(text: '设置',icon: 'assets/images/icon_copy.png',),
        ],
      ),
    );
  }
}
