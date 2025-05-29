import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                customText(text: 'Student ID: TTD98860', fontSize: 12.sp),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.r),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: customText(
              text: '2',
              textColor: Colors.white,
              fontSize: 10.sp,
            ),
          ),
          SizedBox(width: 6.w),
          Icon(Icons.notifications_outlined, size: 24.r),
        ],
      ),
    );
  }
}
