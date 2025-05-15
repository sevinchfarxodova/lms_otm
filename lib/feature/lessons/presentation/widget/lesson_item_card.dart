import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lessons/presentation/widget/custom_linear_progress_ind.dart';
import 'package:lms_test/feature/lessons/presentation/widget/get_lesson_item_color.dart';

class LessonItemCard extends StatelessWidget {
  const LessonItemCard({super.key, required this.subject});

  final Map<String, dynamic> subject;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          spacing: 4.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(text: subject['name'], fontSize: 16.sp),
                Icon(Icons.arrow_forward_ios, size: 24.w),
              ],
            ),
            customText(
              text:
                  '${subject['type']} | ${subject['hours']} soat | ${subject['credits']} kredit',
              fontSize: 12.sp,
              textColor: AppColors.greyTextColor,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 5.h),
            Row(
              spacing: 10.w,
              children: [
                customText(
                  text: '${subject['score']}/100',
                  fontSize: 16.sp,
                  textColor: AppColors.mainColor,
                ),
                CustomLinearProgressInd(
                  score: subject['score'],
                  status: subject["status"],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(
                  text: 'Umumiy ball',
                  fontSize: 12.sp,
                  textColor: AppColors.blueColor,
                  fontWeight: FontWeight.w400,
                ),
                if (subject['status'].isNotEmpty)
                  Align(
                    alignment: Alignment.centerRight,
                    child: customText(
                      text: subject['status'],
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      textColor: getLessonItemColor(subject["status"]),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
