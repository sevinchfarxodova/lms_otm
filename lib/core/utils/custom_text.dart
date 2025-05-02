import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customText({
  required String text,
  Color? textColor,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    maxLines: 5,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: textColor,
      fontSize: fontSize ?? 12.sp,
      fontWeight: fontWeight,
    ),
  );
}
