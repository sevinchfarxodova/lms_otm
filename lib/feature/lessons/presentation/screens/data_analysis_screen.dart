import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/core/widgets/linear_progress_indicator.dart';
import 'package:lms_test/feature/lessons/presentation/widget/download_button.dart';

class DataAnalysisScreen extends StatelessWidget {
  const DataAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(text: "Mavzular 26 ta"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  text: "78 % Darslar ko'rib chiqildi",
                  fontSize: 12.sp,
                  textColor: AppColors.greyTextColor,
                ),
                CustomLinearProgressIndGrad(progressValue: 78),
              ],
            ),
            GestureDetector(
              onTap: () {
                //function for download videos
              },
              child: DownloadButton(text: "Yuklash 213.8 mb"),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        customText(
          text: "Ma'lumotlar tahlili haqida umumiy ma'lumot",
          textColor: AppColors.blueColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
