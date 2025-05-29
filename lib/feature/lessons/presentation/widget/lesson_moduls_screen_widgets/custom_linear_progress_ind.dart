import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/feature/lessons/presentation/widget/get_lesson_item_color.dart';

class CustomLinearProgressInd extends StatelessWidget {
  const CustomLinearProgressInd({
    super.key,
    required this.score,
    required this.status,
  });

  final int score;
  final String status;

  Color _getBackgroundColor(String status) {
    switch (status) {
      case 'Qoniqarli':
        return AppColors.lightMainColor;
      case 'Yiqildi':
        return AppColors.lightRedColor;
      case 'Muvaffaqqiyatli':
        return AppColors.lightGreenColor;
      default:
        return AppColors.lightMainColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LinearProgressIndicator(
        value: score / 100,
        color: getLessonItemColor(status),
        backgroundColor: _getBackgroundColor(status),
        minHeight: 5.h,
        borderRadius: BorderRadius.circular(5.r),
      ),
    );
  }
}
