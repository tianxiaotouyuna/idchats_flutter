import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomProgressBar extends LeafRenderObjectWidget {
  final double progress;

  CustomProgressBar({required this.progress});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _CustomProgressBarRenderObject(progress: progress);
  }

  @override
  void updateRenderObject(BuildContext context, _CustomProgressBarRenderObject renderObject) {
    renderObject.progress = progress;
  }
}

class _CustomProgressBarRenderObject extends RenderBox {
  double progress;

  _CustomProgressBarRenderObject({required this.progress});

  @override
  void performLayout() {
    size = constraints.constrain(Size(double.infinity, 10));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;

    // Draw background
    final backgroundPaint = Paint()..color = Colors.grey[300]!;
    canvas.drawRect(offset & size, backgroundPaint);

    // Draw progress
    final progressPaint = Paint()..color = const Color.fromARGB(255, 243, 86, 33);
    final progressWidth = size.width * progress;
    canvas.drawRect(offset & Size(progressWidth, size.height), progressPaint);
  }
}
