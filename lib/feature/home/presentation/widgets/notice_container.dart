import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class NoticeContainer extends StatelessWidget {
  final Color badgeColor;
  final Color backgroundColor;
  final String badgeIconUrl;
  final String badgeText;

  const NoticeContainer({
    super.key,

    required this.badgeColor,
    required this.backgroundColor,
    required this.badgeIconUrl,
    required this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(badgeIconUrl),
          SizedBox(width: 4.w),
          customText(text: badgeText, fontSize: 10.sp, textColor: badgeColor),
        ],
      ),
    );
  }
}
