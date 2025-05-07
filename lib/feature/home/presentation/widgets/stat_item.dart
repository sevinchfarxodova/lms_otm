import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class StatItem extends StatelessWidget {
  final String iconUrl;
  final String count;
  final String label;

  const StatItem({
    super.key,
    required this.iconUrl,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(iconUrl),
        ),
        SizedBox(height: 8.h),
        customText(
          text: count,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 4.h),
        customText(
          text: label,
          fontSize: 12.sp,
          textColor: Colors.grey.shade600,
        ),
      ],
    );
  }
}
