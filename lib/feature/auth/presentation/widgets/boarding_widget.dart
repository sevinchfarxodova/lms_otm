import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';

class BoardingWidget extends StatelessWidget {
  final String text;
  final Widget image;

  const BoardingWidget({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: (40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image,
          Text(text,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: AppColors.blackTextColor, fontSize: 40.sp,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}