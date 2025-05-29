import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class ProfileItemWidget extends StatelessWidget {
  final Map<String, dynamic> item;
  const ProfileItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        Column(
          children: [
            SizedBox(height: 10.h),
            CircleAvatar(
              maxRadius: 25.r,
              backgroundColor: AppColors.mainColor,
              child: Icon(item['icon'], color: AppColors.whiteColor),
            ),
          ],
        ),
        SizedBox(
          height: 70.h,
          width: 250.w,
          child: Column(
            children: [
              Divider(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                    text: item['text'],
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                  Icon(Icons.arrow_forward, color: AppColors.mainColor),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
