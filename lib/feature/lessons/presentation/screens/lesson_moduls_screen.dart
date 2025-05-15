import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/core/widgets/linear_progress_indicator.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_moduls_screen_widgets/download_button.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_moduls_screen_widgets/lesson_modules_tile.dart';
import 'package:lms_test/feature/lessons/presentation/widget/read_more_text_widget.dart';

class LessonModulsScreen extends StatefulWidget {
  const LessonModulsScreen({super.key});

  @override
  State<LessonModulsScreen> createState() => _LessonModulsScreenState();
}

class _LessonModulsScreenState extends State<LessonModulsScreen> {
  bool isExpanded = false;

  final String text =
      "Ma'lumotlar tahlili (yoki data analysis) — bu mavjud ma'lumotlarni yig'ish, tozalash, o'rganish va ulardan foydali xulosa chiqarish jarayoni. Bu jarayon statistika, dasturlash va vizualizatsiya vositalaridan foydalangan holda amalga oshiriladi.";

  @override
  Widget build(BuildContext context) {
    log("build chaqirildi");
    return Column(
      spacing: 4.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 14.h),

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
        SizedBox(height: 6.h),
        customText(
          text: "Ma'lumotlar tahlili haqida umumiy ma'lumot",
          textColor: AppColors.blueColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        ReadMoreTextWidget(text: text),
        const Divider(),
        Expanded(
          child: ListView(children: [LessonModulesTile(), LessonModulesTile()]),
        ),
      ],
    );
  }
}
