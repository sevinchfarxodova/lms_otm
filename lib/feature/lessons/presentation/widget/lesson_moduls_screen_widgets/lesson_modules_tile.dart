import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/core/widgets/custom_circular_progress_indicator_grad.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_moduls_screen_widgets/module_card_item.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_moduls_screen_widgets/module_card_questions_widget.dart';

class LessonModulesTile extends StatefulWidget {
  const LessonModulesTile({super.key});

  @override
  State<LessonModulesTile> createState() => _LessonModulesTileState();
}

class _LessonModulesTileState extends State<LessonModulesTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Radius qo'shish
        // side: BorderSide(color: Colors.grey, width: 1), // Border qo'shish
      ),
      child: Column(
        children: [
          Theme(
            data: ThemeData().copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              minTileHeight: 20.h,
              internalAddSemanticForOnTap: false,
              title: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(text: "1-Mavzu"),
                      customText(text: "Malumotlar bazasiga kirish SQL "),
                    ],
                  ),
                  Spacer(),
                  CustomCircularProgressIndicatorGrad(progressValue: 90),
                ],
              ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  isExpanded = expanded;
                });
              },
              childrenPadding: EdgeInsets.all(10.w),
              children: [
                ModuleCardItem(
                  title: "HTML5 yangi standartlari va ularning vazifalari",
                  isWatched: false,
                  time: "15:05",
                ),
                ModuleCardItem(
                  title: "HTML5 yangi standartlari va ularning vazifalari",
                  isWatched: true,
                  time: "15:05",
                ),
                ModuleCardItem(
                  title: "HTML5 yangi standartlari va ularning vazifalari",
                  iconPath: AppIcons.resourceIcon,
                ),
                const ModuleCardQuestionsWidget(),
              ],
            ),
          ),
          isExpanded
              ? SizedBox.shrink()
              : Column(
                children: [
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                      bottom: 5.h,
                    ),
                    child: Row(
                      spacing: 10.w,
                      children: [
                        SvgPicture.asset(AppIcons.lockIcon),
                        customText(
                          text:
                              "Bu mavzuni ochish uchun o’tgan mavzuni to’liq tugating!",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
