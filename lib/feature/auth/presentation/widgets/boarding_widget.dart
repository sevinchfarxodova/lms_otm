import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class BoardingWidget extends StatelessWidget {
  final String mainText;
  final String subText;
  final String imageUrl;

  const BoardingWidget({
    super.key,
    required this.mainText,
    required this.subText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: 280.w,
      child: Column(
        children: [
          Spacer(),
          Image.asset(imageUrl),
          SizedBox(height: 30.h),
          customText(
            text: mainText,
            textAlign: TextAlign.center,
            textColor: AppColors.blackTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: customText(
              text: subText,
              textAlign: TextAlign.center,
              textColor: AppColors.blackTextColor,
              fontWeight: FontWeight.w600,

              fontSize: 15.sp,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
