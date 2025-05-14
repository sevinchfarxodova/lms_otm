import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/state_menegement/cubit/date_cubit.dart';

class WeekDayPicker extends StatelessWidget {
  const WeekDayPicker({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedDate = context.watch<DateCubit>().state;
    final startDate = selectedDate.subtract(Duration(days: 3));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(7, (index) {
        final date = startDate.add(Duration(days: index));
        final isSelected =
            date.day == selectedDate.day &&
            date.month == selectedDate.month &&
            date.year == selectedDate.year;

        return GestureDetector(
          onTap: () => context.read<DateCubit>().selectDate(date),
          child: Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  isSelected
                      ? AppColors.blueColor
                      : AppColors.greyTextColor.withOpacity(0.3),
            ),
            child: customText(
              text: '${date.day}',
              textColor: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
        );
      }),
    );
  }
}
