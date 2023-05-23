import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'biubiu_skeleton.dart';
// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names
enum SkeletonBgStyle {
  Dark_STYLE, //常规通用
  Light_STYLE, //抽屉页面
}
class BiuBiuImage extends StatefulWidget implements PreferredSizeWidget {
  final String url;
  final double width;
  final double height;
  final double radius;
  final VoidCallback onPressed;
  final SkeletonBgStyle style;
  const BiuBiuImage(
      {super.key,
      required this.url,
      required this.radius,
      required this.width,
      required this.height,
      required this.onPressed,
      this.style = SkeletonBgStyle.Dark_STYLE});
  @override
  State<BiuBiuImage> createState() => _BiuBiuImageState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _BiuBiuImageState extends State<BiuBiuImage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
                  borderRadius: BorderRadius.circular(widget.radius),
                  child: // 左侧的图标
                               CachedNetworkImage(
                width: widget.width,
                height: widget.height,
                fadeInCurve: Curves.easeInOut,
                fadeInDuration: const Duration(milliseconds: 1000),
                imageUrl: widget.url,
                    imageBuilder: (context, imageProvider) {
                      return Material(
                        color: Colors.blueAccent,
                        child: Ink.image(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          child: InkWell(
                              onTap: () => {widget.onPressed()},
                              splashColor: Colors.white.withOpacity(0.5)),
                        ),
                      );
                    },
                cacheManager: DefaultCacheManager(),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>  BiuBiuSkeleton(width: double.infinity,height: double.infinity,radius: widget.radius,style: widget.style==SkeletonBgStyle.Dark_STYLE?SkeletonStyle.Dark_STYLE:SkeletonStyle.Light_STYLE),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error_sharp),
              ));
  }
}
