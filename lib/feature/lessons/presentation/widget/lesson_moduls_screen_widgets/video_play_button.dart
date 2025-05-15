import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';

class VideoPlayButton extends StatelessWidget {
  const VideoPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.play_arrow_rounded,
        color: AppColors.whiteColor,
        size: 14.w,
      ),
    );
  }
}

class VideoPlayedButton extends StatelessWidget {
  const VideoPlayedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.w,
      height: 36.h,
      decoration: BoxDecoration(
        color: AppColors.greenColor,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.check, color: AppColors.whiteColor, size: 10.w),
    );
  }
}
