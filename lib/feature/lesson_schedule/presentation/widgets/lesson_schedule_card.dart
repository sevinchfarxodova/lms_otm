import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/widgets/appointment_type_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class LessonScheduleCard extends StatelessWidget {
  const LessonScheduleCard({
    super.key,
    required this.appointment,
    required this.status,
  });

  final Appointment appointment;
  final dynamic status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.w),
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 4.w,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppointmendTypeWidget(appointmentSubject: appointment.subject),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(
                text: 'C++ dasturlash tili fani (Zoom)',
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
              SvgPicture.asset(AppIcons.videoLessonIcon),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(text: 'Talaba darsga qatnashdi: ', fontSize: 10.sp),
              customText(
                text: status ?? '',
                fontSize: 10.sp,
                textColor:
                    status == "Qatnashdi"
                        ? AppColors.greenColor
                        : AppColors.redColor,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
