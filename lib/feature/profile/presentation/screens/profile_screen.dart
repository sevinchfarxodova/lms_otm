import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/home/presentation/widgets/profile_widget.dart';
import 'package:lms_test/feature/profile/presentation/widgets/profile_item_widget.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.settings, 'text': "Ma'lumotlarni o‘zgartirish"},
    {'icon': Icons.calendar_today, 'text': "Semester"},
    {'icon': Icons.language, 'text': "Tilni o‘zgartirish"},
    {'icon': Icons.brightness_2, 'text': "Dizayn"},
    {'icon': Icons.info_outline, 'text': "Ilova haqida"},
    {'icon': Icons.logout, 'text': "Chiqish"},
  ];

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                text: "Profile bo'limi",
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
              ),
              const Divider(),
              const ProfileHeader(),
              customText(
                text:
                    "Muhammad al-Xorazmiy nomidagi Toshkent axborot texnalogiyalari universiteti\n028-21 SKIo' guruh 3-kurs talabasi",
                fontSize: 14.sp,
                textColor: AppColors.greyTextColor,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    final item = menuItems[index];
                    return ProfileItemWidget(item: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
