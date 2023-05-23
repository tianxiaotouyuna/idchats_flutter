import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/features/main_page/presentation/widgets/top_carousel.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_nft_entity.dart';
import 'package:idchats_flutter/features/main_page/presentation/widgets/top_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../bloc/main_page_bloc.dart';

class Top extends StatefulWidget {
  final bool isLoading;
  final List<UserNftEntity> data;
  const Top({super.key, required this.data, required this.isLoading});
  @override
  State<Top> createState() => _TopState();
}
// ignore: unused_element

class _TopState extends State<Top> {
  final controller = TextEditingController();
  late int current = widget.data.length ~/ 2;
  late String inputStr;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TopCarousel(
          initialPage: current,
          data: widget.data,
          isLoading: widget.isLoading,
          onPageChanged: (int index, CarouselPageChangedReason reason) => {
                setState(() {
                  current = index;
                })
              },
          onPressed: (int index) => {}),
      Padding(
          padding: const EdgeInsets.all(18.0),
          child: TopIndicator(
            initialPage: current,
            data: widget.data,
            isLoading: widget.isLoading,
          )),
    ]);
  }

  void addConcrete() {
    controller.clear();
    // context.read<MainPageBloc>().add(const ReloadUserInfo('0x33399282928'));
  }

  void tapCarouselPage(int current) {
    context.read<MainPageBloc>().add(MainPageEvent(
        CaseParams(eventName: EVENT_NAVIGATE_PUSH, data: {'index': current})));
  }
}
