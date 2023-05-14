import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter/material.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // 左侧的图标
            CachedNetworkImage(
              width: 100,
              height: 100,
              imageUrl: 'https://imgcache.dealmoon.com/thumbimg.dealmoon.com/dealmoon/bf9/75f/20a/5200846125a160e23dbeda1.jpg_1280_1280_3_1775.jpg',
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      Colors.grey,
                      BlendMode.colorBurn,
                    ),
                  ),
                ),
              ),
              cacheManager: DefaultCacheManager(),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error_sharp),
            ),
            Padding(padding:const EdgeInsets.only(left:10,right: 10),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data['name'], style: TextStyle(fontSize: 18)),
                Text(data['address'], style: TextStyle(fontSize: 18)),
              ],
            ),),
            
            // 左侧的文字
          ],
        ),
      ),
    );
  }
}
