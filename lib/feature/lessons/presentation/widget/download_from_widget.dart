import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class DownloadFromWidget extends StatelessWidget {
  const DownloadFromWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        customText(
          text:
              'Fayl formati: doc, docx, pdf, xls, xlsx, ppt, pptx, png, jpg, jpeg, txt, zip, rar',
          textColor: AppColors.greyTextColor,
          textAlign: TextAlign.center,
        ),
        customText(
          text: "Maksimal fayl o'lchami: 20 MB",
          textColor: AppColors.greyTextColor,
          textAlign: TextAlign.center,
        ),
        customText(
          text: "Maksimal fayllar soni: 3 ta",
          textColor: AppColors.greyTextColor,
          textAlign: TextAlign.center,
        ),
        customText(
          text: "Jami fayllar maksimal hajmi: 20MB",
          textColor: AppColors.greyTextColor,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5.h),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            fixedSize: Size(300.w, 40.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.downloadFromIcon),
              customText(text: 'Yuklash', textColor: AppColors.whiteColor),
            ],
          ),
        ),
      ],
    );
  }
}
