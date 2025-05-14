import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/state_menegement/cubit/date_cubit.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final date = context.watch<DateCubit>().state;

    String formattedDate = DateFormat.EEEE('uz_UZ').format(date);
    formattedDate = formattedDate[0].toUpperCase() + formattedDate.substring(1);
    String formattedDateWithComma =
        "$formattedDate, ${DateFormat.d('uz_UZ').format(date)}";

    String formattedMonth = DateFormat.yMMMM('uz_UZ').format(date);
    formattedMonth =
        formattedMonth[0].toUpperCase() + formattedMonth.substring(1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customText(text: formattedDateWithComma, fontSize: 16.sp),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () => context.read<DateCubit>().previousWeek(),
            ),
            customText(text: formattedMonth),
            IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () => context.read<DateCubit>().nextWeek(),
            ),
          ],
        ),
      ],
    );
  }
}
