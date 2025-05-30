import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundImage: const NetworkImage(
              "https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?t=st=1746284338~exp=1746287938~hmac=458033c474d7177eaf6346992467beb99683d88cc5d2eb057dc13a8730706830&w=740",
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  text: 'Salom Saidamir!',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
                customText(text: 'Student ID: TTD98860', fontSize: 14.sp),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(
                AppIcons.notificationIcon,
                width: 24.w,
                height: 24.h,
              ),
              Positioned(
                left: -8.w,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                    vertical: 1.5.h,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(minWidth: 16.w, minHeight: 16.h),
                  child: Center(
                    child: customText(
                      text: '13',
                      textColor: AppColors.whiteColor,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
