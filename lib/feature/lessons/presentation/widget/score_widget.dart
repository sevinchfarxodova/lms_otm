import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class ScoreWidget extends StatelessWidget {
  final String scoreText;
  final String text;
  const ScoreWidget({super.key, required this.scoreText, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      width: 80.w,
      child: Card(
        color: AppColors.lightMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 5.h),
            customText(
              text: scoreText,
              fontSize: 32,
              textColor: AppColors.mainColor,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 5.h),
            customText(
              text: 'Ball',
              fontSize: 16,
              textColor: AppColors.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
