import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AuthButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.h,
      width: 400.w,
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          backgroundColor: AppColors.mainColor,
        ),
        onPressed: onPressed,
        child: customText(
          text: title,
          textColor: AppColors.whiteColor,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
