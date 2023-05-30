import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/widgets/biubiu_image.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';

class Header extends StatelessWidget {
  final Map data;

  Header({super.key, required this.data});
// 创建自定义CacheManager
final customCacheManager = CacheManager(
  Config(
    'customCacheKey',
    stalePeriod: const Duration(days: 7), // 设置缓存过期时间
    maxNrOfCacheObjects: 100, // 设置最大缓存对象数
  ),
);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding:  EdgeInsets.all(8.0.w),
        child: Row(
          children: [
            // 左侧的图标
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
           child: BiuBiuImage(
              width: 100.w,
              height: 100.w,
              url: 'https://imgcache.dealmoon.com/thumbimg.dealmoon.com/dealmoon/bf9/75f/20a/5200846125a160e23dbeda1.jpg_1280_1280_3_1775.jpg',
              radius:16.r,
              onPressed: ()=>{},
            )
            ),
            Padding(padding: EdgeInsets.only(left:10.w,right: 10.w),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BiuBiuText(data['name'], style: TextStyle(fontSize: 18.sp)),
                BiuBiuText(data['address'], style: TextStyle(fontSize: 18.sp)),
              ],
            ),),
            
            // 左侧的文字
          ],
        ),
      ),
    );
  }
}
