import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/core/widgets/custom_circular_progress_indicator_grad.dart';
import 'package:lms_test/feature/lessons/presentation/widget/lesson_moduls_screen_widgets/download_resources.dart';
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
      color: AppColors.whiteColor,
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
              backgroundColor: AppColors.whiteColor,
              minTileHeight: 20.h,
              internalAddSemanticForOnTap: false,
              title: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                        text: "1-Mavzu",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      customText(
                        text: "Malumotlar bazasiga kirish SQL ",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomCircularProgressIndicatorGrad(
                    scoreProgress: 76,
                    size: 45,
                    strokeWidth: 7,
                  ),
                ],
              ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  isExpanded = expanded;
                });
              },
              childrenPadding: EdgeInsets.all(10.w),
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(VideoLessonRoute());
                  },
                  child: ModuleCardItem(
                    title: "HTML5 yangi standartlari va ularning vazifalari",
                    isWatched: false,
                    time: "15:05",
                  ),
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
                const DownloadResourcesWidget(),
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
                              "Bu mavzuni ochish uchun o'tgan mavzuni to'liq tugating!",
                          fontSize: 11.sp,
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
