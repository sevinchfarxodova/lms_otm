import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class TopshiriqYuklandiWidget extends StatelessWidget {
  const TopshiriqYuklandiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_outline_outlined,
            color: AppColors.greenColor,
            size: 20.w,
          ),
          customText(
            text: 'Topshiriq yuklandi',
            textColor: AppColors.greenColor,
          ),
        ],
      ),
    );
  }
}
