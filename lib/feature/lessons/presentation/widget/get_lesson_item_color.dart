import 'dart:ui';

import 'package:lms_test/core/utils/app_colors.dart';

Color getLessonItemColor(String status) {
  switch (status) {
    case 'Qoniqarli':
      return AppColors.blueColor;
    case 'Yiqildi':
      return AppColors.redColor;
    case 'Muvaffaqiyatli':
      return AppColors.greenColor;
    default:
      return AppColors.lightBlueColor;
  }
}
