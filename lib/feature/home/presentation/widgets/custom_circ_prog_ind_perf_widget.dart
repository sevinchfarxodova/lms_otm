import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/get_lesson_item_color_score.dart';

class CustomCircProgIndPerfWidget extends StatelessWidget {
  final double percentage;
  final String label;

  const CustomCircProgIndPerfWidget({
    super.key,
    required this.percentage,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5.h),
          SizedBox(
            height: 50.h,
            width: 50.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: Colors.transparent,
                  child: CircularProgressIndicator(
                    constraints: BoxConstraints.expand(),
                    strokeCap: StrokeCap.round,
                    value: percentage / 100,
                    strokeWidth: 6,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      getLessonItemColorByScore(percentage),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: customText(
                    text: '${percentage.toInt()}%',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: 70.w,
            child: customText(
              text: label,
              textAlign: TextAlign.center,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
