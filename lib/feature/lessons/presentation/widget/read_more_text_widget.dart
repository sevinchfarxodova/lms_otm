import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/feature/lessons/presentation/state_management/cubit/read_more_text_cubit.dart';

class ReadMoreTextWidget extends StatelessWidget {
  final String text;

  const ReadMoreTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReadMoreTextCubit>(
      create: (_) => ReadMoreTextCubit(),
      child: BlocBuilder<ReadMoreTextCubit, bool>(
        builder: (context, expanded) {
          return RichText(
            text: TextSpan(
              text:
                  expanded
                      ? text + ' '
                      : (text.length > 100
                          ? '${text.substring(0, 100)}... '
                          : text),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: expanded ? "joyiga qaytarish" : "davom etish",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          context.read<ReadMoreTextCubit>().toggle();
                        },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
