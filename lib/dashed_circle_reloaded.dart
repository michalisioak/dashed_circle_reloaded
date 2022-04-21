library dashed_circle_reloaded;

import 'dart:math';
import 'package:flutter/material.dart';

class DashedCircle extends StatelessWidget {
  final int dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;
  final Widget? child;

  const DashedCircle({
    Key? key,
    this.child,
    this.dashes = 20,
    this.color = Colors.black,
    this.gapSize = 3.0,
    this.strokeWidth = 2.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedCirclePainter(
          dashes: dashes,
          color: color,
          gapSize: gapSize,
          strokeWidth: strokeWidth),
      child: child,
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final int dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;

  DashedCirclePainter({
    this.dashes = 20,
    this.color = Colors.black,
    this.gapSize = 3.0,
    this.strokeWidth = 2.5,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double gap = pi / 180 * gapSize;
    final double singleAngle = (pi * 2) / dashes;

    for (int i = 0; i < dashes; i++) {
      final Paint paint = Paint()
        ..color = color
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;

      canvas.drawArc(Offset.zero & size, gap + singleAngle * i,
          singleAngle - gap * 2, false, paint);
    }
  }

  @override
  bool shouldRepaint(DashedCirclePainter oldDelegate) {
    return dashes != oldDelegate.dashes || color != oldDelegate.color;
  }
}
