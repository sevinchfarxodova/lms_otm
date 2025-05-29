import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class VideoScriptWidget extends StatelessWidget {
  const VideoScriptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),

      child: ListView.builder(
        padding: EdgeInsets.all(4.w),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                text: "0:00",
                fontSize: 12.sp,
                textColor: AppColors.greyTextColor,
              ),
              Expanded(
                child: customText(
                  text:
                      """Salom! Biz sizni yana o'z darsimizda ko'rfanimizdan xursandmiz. Men professor Emilioman, va men sizlarga HTML 5 darsidan maruza qilaman va sizlardan amaliyot ham olaman.""",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
