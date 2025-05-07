import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/assigement_card.dart';

class AssignmentsSection extends StatelessWidget {
  const AssignmentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(
              text: 'Topshiriqlar',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  customText(
                    text: '2-semestr',
                    textColor: Colors.white,
                    fontSize: 12.sp,
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 18.r,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        const AssignmentCard(
          title: 'Mustaqil va amaliy ishlar',
          subtitle: 'Network sistemalari haqida',
          taskType: "Amaliy ish",
          badgeText: '7 kun qoldi!',
          badgeColor: AppColors.redColor,
          badgeBackgroundColor: AppColors.lightRedColor,
          badgeIconUrl: AppIcons.warningIcon,
          time: '25.04.2025 12:55',
        ),
        SizedBox(height: 10.h),
        const AssignmentCard(
          title: 'Individual loyiha',
          subtitle: "Ma'lumotlar tahlili",
          taskType: "Kurs ishi",
          badgeText: 'Yangi vazifa',
          badgeColor: AppColors.blueColor,
          badgeBackgroundColor: AppColors.lightBlueColor,
          badgeIconUrl: AppIcons.newTaskIcon,
          time: '15.04.2025 23:55',
        ),
        SizedBox(height: 10.h),
        const AssignmentCard(
          title: '2-Mustaqil ish',
          subtitle: "Ekologiya",
          badgeText: 'Vazifa bajarilgan',
          taskType: "Amaliy ish",
          badgeColor: AppColors.greenColor,
          badgeBackgroundColor: AppColors.lightGreenColor,
          badgeIconUrl: AppIcons.completedIcon,
          time: '27.04.2025 23:55',
        ),
      ],
    );
  }
}
