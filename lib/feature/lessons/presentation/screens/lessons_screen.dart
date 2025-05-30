import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/core/widgets/custom_app_bar.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_item_card.dart';

@RoutePage()
class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  final List<Map<String, dynamic>> subjects = const [
    {
      'name': 'Ekologiya',
      'type': 'Tanlov',
      'hours': 120,
      'credits': 4,
      'score': 0,
      'status': '',
    },
    {
      'name': 'Ma\'lumotlar Tahlili',
      'type': 'Majburiy',
      'hours': 120,
      'credits': 4,
      'score': 74,
      'status': 'Qoniqarli',
    },
    {
      'name': 'Operatsion Tizimlar',
      'type': 'Majburiy',
      'hours': 120,
      'credits': 4,
      'score': 36,
      'status': 'Yiqildi',
    },
    {
      'name': 'Operatsion Tizimlar',
      'type': 'Majburiy',
      'hours': 120,
      'credits': 4,
      'score': 86,
      'status': 'Muvaffaqiyatli',
    },
    {
      'name': 'Operatsion Tizimlar',
      'type': 'Majburiy',
      'hours': 120,
      'credits': 4,
      'score': 86,
      'status': 'Muvaffaqiyatli',
    },
    {
      'name': 'Operatsion Tizimlar',
      'type': 'Majburiy',
      'hours': 120,
      'credits': 4,
      'score': 86,
      'status': 'Muvaffaqiyatli',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(title: "Fanlar"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                customText(
                  text: '2 semester',
                  fontSize: 16.sp,
                  textColor: AppColors.blackTextColor,
                ),
                Icon(Icons.arrow_forward_ios, color: AppColors.blackTextColor),
                Spacer(),
                customText(text: '2024-2025', fontSize: 22.sp),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  final subject = subjects[index];
                  return GestureDetector(
                    onTap: () {
                      context.router.push(TabBarRoute());
                    },
                    child: LessonItemCard(subject: subject),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
