import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_decoration.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/notice_container.dart';

class AssignmentCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String taskType;
  final String badgeText;
  final Color badgeColor;
  final Color badgeBackgroundColor;
  final String badgeIconUrl;
  final String time;

  const AssignmentCard({
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
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: AppDecorations.currentActivityCard,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(text: title, fontSize: 14.sp),
                SizedBox(height: 4.h),
                customText(
                  text: subtitle,
                  fontSize: 12.sp,
                  textColor: AppColors.greyTextColor,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 8.h),
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
              Icon(Icons.arrow_forward_ios, size: 16.r, color: Colors.grey),
              SizedBox(height: 30.h),
              customText(
                text: taskType,
                fontSize: 10.sp,
                textColor: Colors.grey.shade600,
              ),

              SizedBox(height: 4.h),
              customText(
                text: time,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(width: 8.w),
        ],
      ),
    );
  }
}
