import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/config/constants/app_constants.dart';
import '../../../../core/widgets/biubiu_image.dart';
import '../../../../core/widgets/biubiu_skeleton.dart';

// ignore_for_file: constant_identifier_names

class TopCarousel extends StatefulWidget implements PreferredSizeWidget {
  final bool isLoading;
  final List data;
  final int initialPage;
  final Function(int index) onPressed;
  final Function (int index, CarouselPageChangedReason reason) onPageChanged;
  const TopCarousel(
      {super.key,
      this.initialPage=0,
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
    int current=widget.initialPage;
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
                  onPageChanged:
                      (int index, CarouselPageChangedReason reason) => {
                            widget.onPageChanged (index,reason)
                          },
                  scrollDirection: Axis.horizontal),
              items: widget.data.map((i) {
                return LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double  width = constraints.maxWidth;
                    return BiuBiuImage(
                        width: double.infinity,
                        height: double.infinity,
                        url: i.imageUrl,
                        radius: 32,
                        onPressed: () => {widget.onPressed(current)});
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
      child: BiuBiuSkeleton(width: 312.w,height:734.h / 2 ,radius: 32.r),
    ));
  }

}
