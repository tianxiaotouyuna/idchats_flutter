// ignore_for_file: sort_child_properties_last

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_hero.dart';
import 'package:idchats_flutter/core/widgets/biubiu_image.dart';
import 'package:idchats_flutter/core/widgets/function_widgets/biubiu_text/biubiu_text.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_nft_entity.dart';

class Body extends StatefulWidget {
  final UserNftEntity? entity;
  final bool isLoading;
  const Body({super.key, required this.isLoading, required this.entity});
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return BiuBiuHero(
      child: Column(children: [
        BiuBiuImage(
            width: double.infinity,
            height: double.infinity,
            url: widget.entity?.imageUrl ?? '',
            radius: 32,
            onPressed: () => {}).asSquare(),
        const Row(children: [BiuBiuText('text'),
        BiuBiuText('text')],mainAxisAlignment: MainAxisAlignment.spaceBetween,).expanded().backgroundColor(Colors.red),
        const Row(children: [BiuBiuText('text'),
        BiuBiuText('text')],),
        const Row(children: [BiuBiuText('text'),
        BiuBiuText('text')],),
      ]),
      heroTag: 'my_hero_tag',
    );
  }
}
