import 'package:auto_route/auto_route.dart' show RoutePage;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
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

  final List<String> texts = [
    "We provide the best learning courses & great mentors!",
    "Learn anytime and anywhere easily and conveniently",
    "Let's improve your skills together with Elera right now!",
  ];

  final List<Widget> images = [
    SvgPicture.asset(AppIcons.ruFlagIcon),
    SvgPicture.asset(AppIcons.uzFlagIcon),
    SvgPicture.asset(AppIcons.enFlagIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 2),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: texts.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder:
                      (context, index) => BoardingWidget(
                        text: texts[index],
                        image: images[index],
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  texts.length,
                  (index) => _buildDot(index),
                ),
              ),
              SizedBox(height: 30.h),
              AuthButton(
                title:
                    _currentPage == texts.length - 1 ? "Get Started" : "Next",
                onPressed: () {
                  if (_currentPage < texts.length - 1) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                  if (_currentPage == texts.length - 1) {
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

  Widget _buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      width: _currentPage == index ? 32.w : 8.h,
      height: 8.h,
      decoration: BoxDecoration(
        color:
            _currentPage == index
                ? AppColors.mainColor
                : AppColors.greyTextColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
