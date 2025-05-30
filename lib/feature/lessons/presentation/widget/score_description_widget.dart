import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class ScoreDescriptionWidget extends StatelessWidget {
  const ScoreDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.lightGreenColor,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_outline_outlined,
            color: AppColors.greenColor,
            size: 18.w,
          ),
          SizedBox(width: 4.w),
          customText(
            text: "Qoniqarli",
            textColor: AppColors.greenColor,
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
