import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class AppointmendTypeWidget extends StatelessWidget {
  const AppointmendTypeWidget({super.key, required this.appointmentSubject});

  final String appointmentSubject;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.lightPurple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: customText(
        text: appointmentSubject,
        textColor: AppColors.purpleColor,
        fontSize: 10.sp,
      ),
    );
  }
}