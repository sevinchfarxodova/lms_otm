import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/assigement_card.dart';
import 'package:lms_test/feature/lessons/presentation/screens/task_details_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        customText(
          text: "Fan topshiriqlari",
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        Expanded(
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return DraggableScrollableSheet(
                        expand: false,
                        initialChildSize: 0.8,
                        maxChildSize: 1.0,
                        minChildSize: 0.25,
                        builder: (_, controller) {
                          return TaskDetailsScreen();
                        },
                      );
                    },
                  );
                },

                child: const AssignmentCard(
                  title: 'Mustaqil va amaliy ishlar',
                  subtitle: 'Network sistemalari haqida',
                  taskType: "Amaliy ish",
                  badgeText: '2 kun qoldi!',
                  badgeColor: AppColors.redColor,
                  badgeBackgroundColor: AppColors.lightRedColor,
                  badgeIconUrl: AppIcons.warningIcon,
                  time: '25.04.2025 12:55',
                ),
              ),
              const AssignmentCard(
                title: 'Individual loyiha',
                subtitle: 'Ma\'lumotlar tahlili',
                taskType: "Kursh ish",
                badgeText: 'Yangi vazifa!',
                badgeColor: AppColors.blueColor,
                badgeBackgroundColor: AppColors.lightMainColor,
                badgeIconUrl: AppIcons.newTaskIcon,
                time: '25.04.2025 12:55',
              ),
              const AssignmentCard(
                title: '2-Mustaqil ish',
                subtitle: 'Ma\'lumotlar tahlili',
                taskType: "Amaliy ish",
                badgeText: 'Vazifa bajarilgan',
                badgeColor: AppColors.greenColor,
                badgeBackgroundColor: AppColors.lightGreenColor,
                badgeIconUrl: AppIcons.completedIcon,
                time: '25.04.2025 12:55',
              ),
              const AssignmentCard(
                title: '1-Mustaqil ish',
                subtitle: 'Ma\'lumotlar tahlili',
                taskType: "Amaliy ish",
                badgeText: 'Vazifa bajarilgan',
                badgeColor: AppColors.greenColor,
                badgeBackgroundColor: AppColors.lightGreenColor,
                badgeIconUrl: AppIcons.completedIcon,
                time: '25.04.2025 12:55',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
