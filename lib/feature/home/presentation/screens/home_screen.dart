import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_decoration.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/assigemensts_section.dart';
import 'package:lms_test/feature/home/presentation/widgets/current_activity_section.dart';
import 'package:lms_test/feature/home/presentation/widgets/custom_circ_prog_ind_perf_widget.dart';
import 'package:lms_test/feature/home/presentation/widgets/divider_container.dart';
import 'package:lms_test/feature/home/presentation/widgets/empty_task_widget.dart';
import 'package:lms_test/feature/home/presentation/widgets/profile_widget.dart';
import 'package:lms_test/feature/home/presentation/widgets/stat_item.dart';
import 'package:lms_test/feature/home/presentation/widgets/video_lesson_section.dart';

@RoutePage()
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileHeader(),
                if (!isEmpty) const VideoLessonSection(),
                if (!isEmpty) const CurrentActivitySection(),

                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: customText(
                    text: 'O\'zlashtirish',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    textColor: Colors.blue,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  decoration: AppDecorations.tasksCard,
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                  child: SizedBox(
                    height: 100.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomCircProgIndPerfWidget(
                          percentage: 75,
                          label: "Ma'lumotlar tahlili",
                        ),
                        CustomCircProgIndPerfWidget(
                          percentage: 55,
                          label: "Dasturlash C++ tili",
                        ),
                        CustomCircProgIndPerfWidget(
                          percentage: 65,
                          label: "Ekologiya",
                        ),
                        CustomCircProgIndPerfWidget(
                          percentage: 37,
                          label: "Operatsion tizimlar",
                        ),
                        CustomCircProgIndPerfWidget(
                          percentage: 75,
                          label: "Ma'lumotlar tahlili",
                        ),
                      ],
                    ),
                  ),
                ),
                customText(
                  text: 'Semester topshiriqlari statusi',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  decoration: AppDecorations.tasksCard,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: StatItem(
                          iconUrl: AppIcons.tekshirilmoqdaIcon,
                          count: isEmpty ? '0' : '8 ta',
                          label: 'Tekshirilmoqda',
                        ),
                      ),
                      const DividerContainer(),
                      Expanded(
                        child: StatItem(
                          iconUrl: AppIcons.bajarilganIcon,
                          count: isEmpty ? '0' : '12 ta',
                          label: 'Bajarilgan',
                        ),
                      ),
                      const DividerContainer(),
                      Expanded(
                        child: StatItem(
                          iconUrl: AppIcons.bajarilmaganIcon,
                          count: isEmpty ? '0' : '14 ta',
                          label: 'Bajarilmagan',
                        ),
                      ),
                    ],
                  ),
                ),
                isEmpty ? EmptyTaskWidget() : const AssignmentsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
