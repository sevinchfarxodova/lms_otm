import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/widgets/custom_app_bar.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/state_menegement/cubit/date_cubit.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/widgets/date_header.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/widgets/lesson_schedule_card.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/widgets/week_day_picker.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

@RoutePage()
class LessonScheduleScreen extends StatelessWidget {
  const LessonScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DateCubit(),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(title: "Dars jadvali"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: Column(
            children: [
              const DateHeader(),
              const WeekDayPicker(),
              SizedBox(height: 12.h),
              Expanded(
                child: BlocBuilder<DateCubit, DateTime>(
                  builder: (context, date) {
                    return SfCalendar(
                      viewHeaderHeight: 0,
                      headerHeight: 0,
                      allowAppointmentResize: true,
                      showCurrentTimeIndicator: false,
                      view: CalendarView.day,
                      initialDisplayDate: date,
                      dataSource: LessonDataSource(getLessons(date)),
                      timeSlotViewSettings: TimeSlotViewSettings(
                        timeIntervalHeight: 35,
                        timeFormat: 'HH:mm',
                        startHour: 8.5,
                        endHour: 20.5,
                        timeInterval: Duration(minutes: 30),
                      ),
                      appointmentBuilder: (context, details) {
                        final appointment = details.appointments.first;
                        final status = appointment.notes;
                        return LessonScheduleCard(
                          appointment: appointment,
                          status: status,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Appointment> getLessons(DateTime date) {
    return [
      Appointment(
        startTime: DateTime(date.year, date.month, date.day, 9, 0),
        endTime: DateTime(date.year, date.month, date.day, 10, 30),
        subject: 'Leksiya',
        notes: 'Qatnashdi',
        color: Colors.white,
      ),
      Appointment(
        startTime: DateTime(date.year, date.month, date.day, 10, 30),
        endTime: DateTime(date.year, date.month, date.day, 12, 0),
        subject: 'Leksiya',
        notes: 'Qatnashmadi',
        color: Colors.white,
      ),
      Appointment(
        startTime: DateTime(date.year, date.month, date.day, 13, 30),
        endTime: DateTime(date.year, date.month, date.day, 15, 0),
        subject: 'Amaliyot',
        notes: 'Qatnashdi',
        color: Colors.white,
      ),
    ];
  }
}

class LessonDataSource extends CalendarDataSource {
  LessonDataSource(List<Appointment> appointments) {
    this.appointments = appointments;
  }
}
