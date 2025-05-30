import 'dart:ui';

import 'package:lms_test/core/utils/app_colors.dart';

Color getLessonItemColorByScore(double score) {
  if (score >= 65) {
    return AppColors.greenColor;
  } else if (score >= 50) {
    return AppColors.blueColor;
  } else {
    return AppColors.redColor;
  }
}
