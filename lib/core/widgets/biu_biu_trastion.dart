import 'package:flutter/material.dart';

class BiuBiuFade extends StatefulWidget {
  final Widget child;
  final Duration duration;

  BiuBiuFade({Key? key, required this.child, this.duration = const Duration(milliseconds: 800)})
      : super(key: key);

  @override
  _BiuBiuFadeState createState() => _BiuBiuFadeState();
}

class _BiuBiuFadeState extends State<BiuBiuFade> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}
