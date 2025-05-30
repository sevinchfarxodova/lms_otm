import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class ModuleCardQuestionsWidget extends StatelessWidget {
  const ModuleCardQuestionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Divider(),
        customText(
          text: "20 ta test savollar",
          fontSize: 12.sp,
          textColor: AppColors.greyTextColor,
        ),
        Row(
          children: [
            SvgPicture.asset(AppIcons.questonsIcon),
            SizedBox(width: 12.w),
            customText(text: "Test Savollari", fontSize: 14.sp),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: customText(
                text: "Testni boshlash",
                textColor: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
