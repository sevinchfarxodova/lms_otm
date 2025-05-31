import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:lms_test/core/utils/app_colors.dart';

class CustomCircularProgressIndicatorGrad extends StatelessWidget {
  final int? currentScore;
  final int? maxScore;
  final String label;
  final double? size;
  final double? strokeWidth;
  final double? scoreProgress;

  const CustomCircularProgressIndicatorGrad({
    super.key,
    this.currentScore,
    this.maxScore,
    this.label = '',
    this.size,
    this.strokeWidth,
    this.scoreProgress,
  });

  @override
  Widget build(BuildContext context) {
    final double progress =
        scoreProgress != null
            ? scoreProgress! / 100
            : currentScore! / maxScore!;
    final List<Color> gradientColors = _getGradientColors(progress);

    return SizedBox(
      width: size ?? 150.w,
      height: size ?? 150.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle
          CustomPaint(
            size: Size(size ?? 150.w, size ?? 150.h),
            painter: CircularProgressPainter(
              progress: 1.0,
              colors: [Colors.grey.shade200, Colors.grey.shade200],
              strokeWidth: strokeWidth ?? 25,
              isBackground: true,
            ),
          ),
          // Progress circle
          CustomPaint(
            size: Size(size ?? 150.w, size ?? 150.h),
            painter: CircularProgressPainter(
              progress: progress,
              colors: gradientColors,
              strokeWidth: strokeWidth ?? 25,
              isBackground: false,
            ),
          ),
          // Center content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                scoreProgress != null
                    ? '${scoreProgress!.floor()}%'
                    : '$currentScore/$maxScore',
                style: TextStyle(
                  fontSize: scoreProgress != null ? 13.sp : 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (label.isNotEmpty)
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  List<Color> _getGradientColors(double progress) {
    // Rasmingizga mos ravishda silliq gradient yaratamiz
    if (progress <= 0.25) {
      // Qizil gradient (0-25%)
      return [Color(0xFFE53E3E), Color(0xFFFF6B6B)];
    } else if (progress <= 0.5) {
      // Sariq-to'q sariq gradient (25-50%)
      return [Color(0xFFFFD93D), Color(0xFFFFA726)];
    } else if (progress <= 0.75) {
      // Ko'k boshlanishi (50-75%)
      return [Color(0xFF42A5F5), Color(0xFF1E88E5)];
    } else {
      // Ko'kdan yashil-ko'kgacha (75-100%) - rasmingizga mos
      return [
        AppColors.linearGradient2, // Binafsha-ko'k (yuqoridan)
        AppColors.linearGradient1, // Yashil-ko'k (pastda)
        AppColors.linearGradient1, //s Yashil-ko'k (pastda)
        AppColors.linearGradient2,
      ];
    }
  }
}

class CircularProgressPainter extends CustomPainter {
  final double progress;
  final List<Color> colors;
  final double strokeWidth;
  final bool isBackground;

  CircularProgressPainter({
    required this.progress,
    required this.colors,
    required this.strokeWidth,
    required this.isBackground,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    final paint =
        Paint()
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    if (isBackground) {
      paint.color = colors.first;
      canvas.drawCircle(center, radius, paint);
    } else {
      // Create sweep gradient for smooth color transition
      final gradient = SweepGradient(
        colors: colors,
        startAngle: 0, // Start from top
        endAngle:
            -math.pi / 2 + (2 * math.pi * progress), // End based on progress
        stops:
            colors.length == 4
                ? [0.0, 0.2, 0.6, 1.0]
                : [0.0, 1.0], // Equal distribution
      );

      final rect = Rect.fromCircle(center: center, radius: radius);
      paint.shader = gradient.createShader(rect);

      // Draw arc
      canvas.drawArc(
        rect,
        -math.pi / 2, // Start from top
        2 * math.pi * progress, // Sweep angle based on progress
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
