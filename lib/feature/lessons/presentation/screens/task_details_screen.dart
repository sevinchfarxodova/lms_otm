import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/app_images.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lessons/presentation/widget/download_from_widget.dart';
import 'package:lms_test/feature/lessons/presentation/widget/task_detail_widget.dart';
import 'package:lms_test/feature/lessons/presentation/widget/topshiriq_yuklandi_widget.dart';

// ignore: must_be_immutable
class TaskDetailsScreen extends StatelessWidget {
  TaskDetailsScreen({super.key});

  bool isHasTask = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TaskDetailWidget(
            title: "1-amaliy ish",
            subtitle: "Amaliy ish",
            taskType: "Amaliy ish",
            badgeText: "2 kun qoldi",
            badgeColor: AppColors.redColor,
            badgeBackgroundColor: AppColors.lightRedColor,
            badgeIconUrl: AppIcons.warningIcon,
            time: "25.04.2025   12:55",
          ),

          Card(
            color: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                spacing: 8.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: "Ma'lumot",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Card(
                    color: AppColors.lightMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                            text: "O'qituvchi izohi",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            textColor: AppColors.mainColor,
                          ),
                          customText(
                            fontSize: 14.sp,
                            text:
                                "Topshiriq 20.04.2025 gacha prezentatsiya qilinmasa 50% ball olib tashlanadi",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Row(
                    spacing: 4.w,
                    children: [
                      SvgPicture.asset(AppIcons.resourceIcon),
                      customText(
                        text: "Namuna\n 14KB",
                        textColor: AppColors.blueColor,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      Spacer(),
                      SvgPicture.asset(AppIcons.downloadIcon),
                      customText(
                        text: "Yuklash",
                        textColor: AppColors.blueColor,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(
                        text: 'Yuklangan topshiriqlar',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      customText(
                        text: 'Urinishlar soni \n     2/20',
                        textColor: AppColors.blueColor,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                  Divider(),
                  isHasTask
                      ? Row(
                        children: [
                          SvgPicture.asset(AppIcons.resourceIcon),
                          customText(
                            text: 'Topshiriq Saidamir.docx\n14KB',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          Spacer(),
                          const TopshiriqYuklandiWidget(),
                        ],
                      )
                      : Center(
                        child: Column(
                          children: [
                            Image.asset(AppImages.topshiriqYuklanmaganImage),
                            customText(
                              text: "Topshiriq yuklanmagan",
                              fontSize: 14.sp,
                            ),
                          ],
                        ),
                      ),
                ],
              ),
            ),
          ),
          const DownloadFromWidget(),
        ],
      ),
    );
  }
}
