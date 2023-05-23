import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/widgets/biubiu_skeleton.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/config/constants/app_constants.dart';

class TopIndicator extends StatefulWidget implements PreferredSizeWidget {
  final bool isLoading;
  final List data;
  final int initialPage;
  const TopIndicator(
      {super.key,
      this.initialPage=0,
      required this.data,
      required this.isLoading,
      });
  @override
  State<TopIndicator> createState() => _TopIndicatorState();
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _TopIndicatorState extends State<TopIndicator> {
  @override
  Widget build(BuildContext context) {
    int current=widget.initialPage;
    return widget.isLoading?
    // ignore: sort_child_properties_last
    BiuBiuSkeleton(radius: 16,child: _renderView(current))
    : _renderView(current);
  }

  Widget _renderView(current){
    return AnimatedSmoothIndicator(
            activeIndex: current,
            count: widget.data.isEmpty?1:widget.data.length,
            effect: const ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.red,
                dotColor: Colors.grey),
          );
  }
  }
      