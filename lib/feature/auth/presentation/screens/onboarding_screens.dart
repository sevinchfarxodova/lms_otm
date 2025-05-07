import 'package:auto_route/auto_route.dart' show RoutePage;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_images.dart';
import 'package:lms_test/feature/auth/presentation/screens/select_university_screen.dart';
import 'package:lms_test/feature/auth/presentation/widgets/auth_button.dart';
import 'package:lms_test/feature/auth/presentation/widgets/boarding_widget.dart';

@RoutePage()
class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  OnboardingScreensState createState() => OnboardingScreensState();
}

class OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> mainTexts = [
    "onboarding1_main_text".tr(),
    "onboarding2_main_text".tr(),
    "onboarding3_main_text".tr(),
  ];
  final List<String> subTexts = [
    "onboarding1_sub_text".tr(),
    "onboarding2_sub_text".tr(),
    "onboarding3_sub_text".tr(),
  ];

  final List<Widget> images = [
    SizedBox(height: 100.h, child: SvgPicture.asset(AppImages.onboarding1)),
    SizedBox(height: 100.h, child: SvgPicture.asset(AppImages.onboarding2)),
    SizedBox(height: 100.h, child: SvgPicture.asset(AppImages.onboarding3)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: mainTexts.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder:
                      (context, index) => BoardingWidget(
                        mainText: mainTexts[index],
                        subText: subTexts[index],
                        image: images[index],
                      ),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: List.generate(
              //     mainTexts.length,
              //     (index) => _buildDot(index),
              //   ),
              // ),
              SizedBox(height: 30.h),
              AuthButton(
                title: "next".tr(),
                // _currentPage == mainTexts.length - 1
                //     ? "Get Started"
                //     : "next".tr(),
                onPressed: () {
                  if (_currentPage < mainTexts.length - 1) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                  if (_currentPage == mainTexts.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectUniversityScreen(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildDot(int index) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 5.h),
  //     width: _currentPage == index ? 32.w : 8.h,
  //     height: 8.h,
  //     decoration: BoxDecoration(
  //       color:
  //           _currentPage == index
  //               ? AppColors.mainColor
  //               : AppColors.greyTextColor,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //   );
  // }
}
