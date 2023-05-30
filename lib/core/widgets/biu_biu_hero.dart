import 'package:flutter/material.dart';

class BiuBiuHero extends StatelessWidget {
  final Widget child;
  final String heroTag;

  const BiuBiuHero({super.key, required this.child, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: child,
    );
  }
}
