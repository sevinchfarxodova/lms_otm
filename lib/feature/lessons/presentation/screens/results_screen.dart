import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lessons/presentation/widget/score_description_widget.dart';
import 'package:lms_test/feature/lessons/presentation/widget/score_widget.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
          text: ' Natija',
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 10.h),
        Card(
          color: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          elevation: 2,
          child: Column(
            spacing: 20.h,
            children: [
              Padding(
                padding: EdgeInsets.all(13.w),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                          text: "Ma'lumotlar Tahlili",
                          fontSize: 18.sp,
                        ),
                        customText(
                          text: "Majburiy | 120 soat | 4 kredit",
                          fontSize: 14.sp,
                          textColor: AppColors.greyTextColor,
                        ),
                      ],
                    ),
                    ScoreDescriptionWidget(),
                  ],
                ),
              ),

              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 130.w,
                    height: 120.h,
                    child: CircularProgressIndicator(
                      value: 22 / 26,
                      strokeCap: StrokeCap.round,
                      strokeWidth: 15,
                      backgroundColor: AppColors.greyTextColor.withOpacity(0.5),
                      valueColor: AlwaysStoppedAnimation(
                        // LinearGradient(
                        //   colors: [Colors.blue, Colors.green],
                        // ).createShader(
                        //   Rect.fromCircle(center: Offset(0, 0), radius: 60),
                        // ),
                        AppColors.mainColor,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: '22/26',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      customText(
                        text: 'Topshiriqlar',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(6),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios_new_outlined),
                          SizedBox(
                            width: 260.w,
                            child: TabBar(
                              dividerHeight: 0,

                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: BoxDecoration(
                                color: AppColors.blueColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.r),
                                ),
                              ),
                              labelColor: AppColors.whiteColor,
                              unselectedLabelColor: AppColors.blackTextColor,
                              tabs: [
                                Tab(height: 25.h, text: 'Joriy'),
                                Tab(height: 25.h, text: 'Oraliq'),
                                Tab(height: 25.h, text: 'Yakuniy'),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),

                      SizedBox(
                        height: 150.h,
                        width: 270.w,
                        child: TabBarView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ScoreWidget(scoreText: "0", text: "Max"),
                                ScoreWidget(scoreText: "0", text: "Max Ball"),
                                ScoreWidget(scoreText: "0 %", text: "Natija"),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ScoreWidget(scoreText: "0", text: "Max"),
                                ScoreWidget(scoreText: "0", text: "Max Ball"),
                                ScoreWidget(scoreText: "0 %", text: "Natija"),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ScoreWidget(scoreText: "0", text: "Max"),
                                ScoreWidget(scoreText: "0", text: "Max Ball"),
                                ScoreWidget(scoreText: "0 %", text: "Natija"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
