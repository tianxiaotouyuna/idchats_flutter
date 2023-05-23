import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/main_page/presentation/bloc/main_page_bloc.dart';
import '../usecases/usecase.dart';

// ignore_for_file: constant_identifier_names
enum BarStyle {
  NORMAL_STYLE, //常规通用
  DRAWER_STYLE, //抽屉页面
}

class BiuBiuStausBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final dynamic data;
  final BarStyle style;
  const BiuBiuStausBar(
      {super.key, this.data, this.title='', this.style = BarStyle.NORMAL_STYLE});
  @override
  State<BiuBiuStausBar> createState() => _BiuBiuStausBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuStausBarState extends State<BiuBiuStausBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: Icon(widget.style == BarStyle.NORMAL_STYLE
            ? Icons.arrow_back
            : Icons.menu),
        color: Colors.white,
        onPressed: () {
          if (widget.style == BarStyle.DRAWER_STYLE) {
            context.read<MainPageBloc>().add(MainPageEvent(CaseParams(
                eventName: EVENT_TOGGLE_DRAWER,
                data: {'parentKey': widget.data['parentKey']})));
          } else {
            Navigator.pop(context);
          }
        },
      ),
      title:Text(widget.title),
       titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
