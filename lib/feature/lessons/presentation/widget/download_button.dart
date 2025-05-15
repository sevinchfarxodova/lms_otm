import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class DownloadButton extends StatelessWidget {
  final String text;
  const DownloadButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppIcons.downloadIcon),
          SizedBox(
            width: 50.w,
            child: customText(
              text: text,
              textColor: AppColors.whiteColor,
              textAlign: TextAlign.center,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}