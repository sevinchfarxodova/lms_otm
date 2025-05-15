import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class TabData {
  final String text;
  final String iconPath;

  TabData(this.text, this.iconPath);
}

class TabItem extends StatelessWidget {
  final String text;
  final String iconPath;
  final bool isSelected;

  const TabItem({
    super.key,
    required this.text,
    required this.iconPath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 30,
      child: Row(
        spacing: 2.w,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 16.w,
            height: 16.h,
            color: isSelected ? AppColors.whiteColor : AppColors.blackTextColor,
          ),
          customText(
            text: text,
            textColor:
                isSelected ? AppColors.whiteColor : AppColors.blackTextColor,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ],
      ),
    );
  }
}
