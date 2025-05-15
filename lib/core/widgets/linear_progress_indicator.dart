import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';

class CustomLinearProgressIndGrad extends StatelessWidget {
  final double progressValue;

  const CustomLinearProgressIndGrad({super.key, required this.progressValue});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.r),
      child: Stack(
        children: [
          Container(
            width: 200.w,
            height: 7.h,
            decoration: BoxDecoration(color: AppColors.lightBlueColor),
          ),
          Container(
            width: 200.w * (progressValue / 100),
            height: 7.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.linearGradient1, AppColors.linearGradient2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
