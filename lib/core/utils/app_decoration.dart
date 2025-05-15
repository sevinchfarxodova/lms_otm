import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppDecorations {
  static BoxDecoration currentActivityCard = BoxDecoration(
    color: AppColors.blueBackgroundColor,
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: Colors.grey.shade300),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.25),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 6),
      ),
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 4,
        offset: Offset(2, 2),
      ),
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 4,
        offset: Offset(-2, 2),
      ),
      BoxShadow(
        color: Colors.grey.withOpacity(0.05),
        spreadRadius: 0,
        blurRadius: 2,
        offset: Offset(0, -1),
      ),
    ],
  );

  static BoxDecoration tasksCard = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: AppColors.blueBackgroundColor,
  );
}