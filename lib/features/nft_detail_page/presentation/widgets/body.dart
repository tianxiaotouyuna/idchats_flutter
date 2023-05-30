// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_hero.dart';
import 'package:idchats_flutter/core/widgets/biubiu_image.dart';
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
      child: BiuBiuImage(
          width: double.infinity,
          height: double.infinity,
          url:widget.entity?.imageUrl??'',
          radius: 32,
          onPressed: () => {}),
      heroTag: 'my_hero_tag',
    );
  }
}
