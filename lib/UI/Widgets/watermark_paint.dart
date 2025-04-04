import 'package:flutter/material.dart';

class LogoDraw extends StatelessWidget {
  const LogoDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: _LogoPainter(), size: Size.infinite);
  }
}

class _LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = Colors.blue.shade900
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round;

    // Draw the rounded square
    final RRect roundedSquare = RRect.fromRectAndRadius(
      Rect.fromLTWH(size.width * 0.1, size.height * 0.4, 100, 100),
      const Radius.circular(20),
    );
    canvas.drawRRect(roundedSquare, paint);

    // Draw the three dots
    final Paint dotPaint = Paint()..color = Colors.white;
    final double dotRadius = 8;
    final double dotSpacing = 20;
    for (int i = 0; i < 3; i++) {
      canvas.drawCircle(
        Offset(size.width * 0.13 + (i * dotSpacing), size.height * 0.48),
        dotRadius,
        dotPaint,
      );
    }

    // Draw the arrow
    final Path arrowPath =
        Path()
          ..moveTo(size.width * 0.23, size.height * 0.44)
          ..lineTo(size.width * 0.28, size.height * 0.48)
          ..lineTo(size.width * 0.23, size.height * 0.52)
          ..close();
    canvas.drawPath(arrowPath, dotPaint);

    // Draw the text
    final TextPainter textPainter = TextPainter(
      text: const TextSpan(
        text: 'Tech',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.35, size.height * 0.42));

    final TextPainter textPainter2 = TextPainter(
      text: const TextSpan(
        text: 'Queue',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter2.layout();
    textPainter2.paint(canvas, Offset(size.width * 0.35, size.height * 0.52));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
