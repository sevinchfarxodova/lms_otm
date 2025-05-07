import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class VideoLessonSection extends StatelessWidget {
  const VideoLessonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AppIcons.videoLessonIcon),
        SizedBox(width: 6.w),
        customText(text: 'Bugun sizda 4 ta video dars bor', fontSize: 12.sp),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 15),
            backgroundColor: AppColors.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            elevation: 2,
          ),
          onPressed: () {
            // funksiya
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              customText(
                text: "Ko'rish",
                textColor: AppColors.whiteColor,
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              Icon(Icons.arrow_forward, color: AppColors.whiteColor),
            ],
          ),
        ),
      ],
    );
  }
}
