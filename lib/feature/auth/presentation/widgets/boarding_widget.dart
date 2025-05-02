import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class BoardingWidget extends StatelessWidget {
  final String mainText;
  final String subText;
  final Widget image;

  const BoardingWidget({
    super.key,
    required this.mainText,
    required this.subText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customText(
            text: mainText,
            textAlign: TextAlign.center,
            textColor: AppColors.blackTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 25.sp,
          ),
          customText(
            text: subText,
            textAlign: TextAlign.center,
            textColor: AppColors.blackTextColor,
            fontSize: 20.sp,
          ),
          image,
        ],
      ),
    );
  }
}
