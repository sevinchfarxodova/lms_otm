import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: 400.w,
      child: FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: AppColors.mainColor),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
