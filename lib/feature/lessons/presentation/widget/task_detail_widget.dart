import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/notice_container.dart';
import 'package:lms_test/feature/lessons/presentation/widget/score_widget.dart';

class TaskDetailWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String taskType;
  final String badgeText;
  final Color badgeColor;
  final Color badgeBackgroundColor;
  final String badgeIconUrl;
  final String time;

  const TaskDetailWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.taskType,
    required this.badgeText,
    required this.badgeColor,
    required this.badgeBackgroundColor,
    required this.badgeIconUrl,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(text: title, fontSize: 16.sp),

                      SizedBox(height: 7.h),
                      NoticeContainer(
                        badgeColor: badgeColor,
                        backgroundColor: badgeBackgroundColor,
                        badgeIconUrl: badgeIconUrl,
                        badgeText: badgeText,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 20.h),
                    customText(
                      text: taskType,
                      fontSize: 12.sp,
                      textColor: Colors.grey.shade600,
                    ),

                    SizedBox(height: 4.h),
                    customText(
                      text: time,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScoreWidget(scoreText: "0", text: "Max"),
                ScoreWidget(scoreText: "0", text: "Max Ball"),
                ScoreWidget(scoreText: "0 %", text: "Natija"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
