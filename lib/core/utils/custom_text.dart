import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customText({
  required String text,
  Color? textColor,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    maxLines: 5,
    textAlign: textAlign ?? TextAlign.start,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: textColor,
      fontSize: fontSize ?? 12.sp,
      fontWeight: fontWeight,
    ),
  );
}
