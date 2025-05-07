import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class BoardingWidget extends StatelessWidget {
  final String mainText;
  final String subText;
  final String imageUrl;

  const BoardingWidget({
    super.key,
    required this.mainText,
    required this.subText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: 300.w,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Expanded(child: SvgPicture.asset(imageUrl)),
        ],
      ),
    );
  }
}
