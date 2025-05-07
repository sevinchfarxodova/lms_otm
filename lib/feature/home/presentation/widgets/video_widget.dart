import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.w,
      height: 36.h,
      decoration: BoxDecoration(
        color: AppColors.videoContainerBackgroundColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Icon(Icons.play_arrow, color: Colors.blue, size: 24.r),
    );
  }
}