import 'dart:ui';

import 'package:flutter/material.dart';

class DashedCircle extends StatelessWidget {
  final Color borderColor;
  final double borderWidth;
  final double size;
  final Widget? child;

  const DashedCircle({
    super.key,
    required this.borderColor,
    this.borderWidth = 1.0,
    this.size = 80.0,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _DashedCirclePainter(
        color: borderColor,
        strokeWidth: borderWidth,
      ),
      child: Center(
        child: SizedBox(
          width: size * 0.6,
          height: size * 0.6,
          child: child,
        ),
      ),
    );
  }
}

class _DashedCirclePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  _DashedCirclePainter({required this.color, this.strokeWidth = 2.0});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final double radius = (size.width - strokeWidth) / 2;
    const double dashLength = 5;
    const double gapLength = 3;

    final Path path = Path()..addOval(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: radius));
    final Path dashPath = Path();
    double distance = 0.0;

    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashPath.addPath(
          pathMetric.extractPath(distance, distance + dashLength),
          Offset.zero,
        );
        distance += dashLength + gapLength;
      }
    }

    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
