import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_moduls_screen_widgets/video_play_button.dart';

// ignore: must_be_immutable
class ModuleCardItem extends StatelessWidget {
  final String title;
  bool? isWatched;
  String? time;
  String? iconPath;

  ModuleCardItem({
    super.key,
    required this.title,
    this.isWatched,
    this.time,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        iconPath != null
            ? SvgPicture.asset(iconPath!)
            : isWatched!
            ? const VideoPlayButton()
            : const VideoPlayedButton(),
        SizedBox(width: 3.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
              text: title,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            time != null
                ? customText(
                  text: time!,
                  fontSize: 12.sp,
                  textColor: AppColors.greyTextColor,
                )
                : SizedBox.shrink(),
          ],
        ),
        Spacer(),
        Column(
          children: [
            SvgPicture.asset(AppIcons.downloadIcon, color: AppColors.mainColor),
            customText(
              text: "8,5 mb",
              fontSize: 11.sp,
              textColor: AppColors.blueColor,
            ),
          ],
        ),
      ],
    );
  }
}
