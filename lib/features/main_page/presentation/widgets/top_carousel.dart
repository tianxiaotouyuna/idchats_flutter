// ignore_for_file: sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_hero.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import '../../../../core/config/constants/app_constants.dart';
import '../../../../core/widgets/biubiu_image.dart';
import '../../../../core/widgets/biubiu_skeleton.dart';

// ignore_for_file: constant_identifier_names

class TopCarousel extends StatefulWidget implements PreferredSizeWidget {
  final bool isLoading;
  final List data;
  final int initialPage;
  final Function(int index) onPressed;
  final Function(int index, CarouselPageChangedReason reason) onPageChanged;
  const TopCarousel({
    super.key,
    this.initialPage = 0,
    required this.data,
    required this.isLoading,
    required this.onPressed,
    required this.onPageChanged,
  });
  @override
  State<TopCarousel> createState() => _TopCarousellState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _TopCarousellState extends State<TopCarousel> {
  @override
  Widget build(BuildContext context) {
    int current = widget.initialPage;
    return widget.isLoading
        ? holderView()
        : CarouselSlider(
            options: CarouselOptions(
                height: 734.h / 2,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: widget.initialPage,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (int index, CarouselPageChangedReason reason) =>
                    {widget.onPageChanged(index, reason)},
                scrollDirection: Axis.horizontal),
            items: widget.data.map((i) {
              return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return BiuBiuHero(
                    child: BiuBiuImage(
                        width: double.infinity,
                        height: double.infinity,
                        url: i.imageUrl,
                        radius: 32,
                        rippleEffect: false,
                        onPressed: () => {tapNft(i)}),
                    heroTag: 'my_hero_tag_${i.nftId}',
                  );
                },
              );
            }).toList(),
          );
  }

  Widget holderView() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(32.r),
        child: // 左侧的图标
            Container(
          height: 734.h / 2,
          width: 312.w,
          color: IMAGE_BACKGROUND_COLOR,
          child: BiuBiuSkeleton(width: 312.w, height: 734.h / 2, radius: 32.r),
        ));
  }

  void tapNft(params) {
    context.read<MainPageBloc>().add(MainPageEvent(CaseParams(
            eventName: EVENT_NAVIGATE_PUSH,
            data: {
              'routeName': Routes.nftDetailPage,
              'context': context,
              'params': params
            })));
  }
}
