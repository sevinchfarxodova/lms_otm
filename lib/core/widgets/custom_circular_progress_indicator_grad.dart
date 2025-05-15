import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class CustomCircularProgressIndicatorGrad extends StatelessWidget {
  final double progressValue;

  const CustomCircularProgressIndicatorGrad({
    super.key,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 30.w,
          height: 30.h,
          child: CircularProgressIndicator(
            value: (progressValue / 100),
            strokeWidth: 8,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(
              HSLColor.fromAHSL(
                1.0,
                120 * (progressValue / 100),
                0.8,
                0.6,
              ).toColor(),
            ),
          ),
        ),
        customText(
          fontSize: 10.sp,
          fontWeight: FontWeight.w600,
          text: "$progressValue%",
        ),
      ],
    );
  }
}
