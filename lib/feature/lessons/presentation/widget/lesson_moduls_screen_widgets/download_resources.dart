
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_images.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class DownloadResourcesWidget extends StatelessWidget {
  const DownloadResourcesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.linearGrad),
        Spacer(),
        Icon(
          Icons.check_circle_outline_outlined,
          color: AppColors.greenColor,
          size: 16.w,
        ),
        SizedBox(width: 5.w),
        customText(
          text: "Resurslar yuklandi",
          textColor: AppColors.greenColor,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
