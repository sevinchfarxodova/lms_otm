import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_decoration.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

class CurrentActivitySection extends StatelessWidget {
  const CurrentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 10.h),
      decoration: AppDecorations.currentActivityCard,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(
                text: 'Oxirgi faoliyatingizdan davom eting',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              IconButton(
                onPressed: () {
                  //funksiya
                },
                icon: Icon(Icons.close, size: 20.r),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.videoIcon),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                        text: "Oliy matematika - Ma'ruza 3",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 4.h),
                      customText(
                        text: "Oxirgi ko'rganingiz: 12:33 da to'xtagan edingiz",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          customText(
            text: 'Davom etish',
            textColor: Colors.blue,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
