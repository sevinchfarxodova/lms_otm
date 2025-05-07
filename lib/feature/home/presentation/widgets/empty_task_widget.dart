import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_images.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class EmptyTaskWidget extends StatelessWidget {
  const EmptyTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10.h,
        children: [
          SvgPicture.asset(AppImages.emptyTaskImage),
          customText(
            text: "Sizda hech qanday topshiriq yo'q",
            textColor: AppColors.greyTextColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
          customText(
            text: "Ta'tilingiz yaxshi o'tsin!",
            textColor: AppColors.greyTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
