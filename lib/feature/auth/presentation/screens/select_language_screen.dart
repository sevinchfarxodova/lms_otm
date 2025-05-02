import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart' show RoutePage;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/auth/presentation/screens/onboarding_screens.dart';
import 'package:lms_test/feature/auth/presentation/widgets/auth_button.dart';
import 'package:lms_test/feature/auth/presentation/widgets/language_option.dart';

@RoutePage()
class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  String selectedLanguage = 'uz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            SvgPicture.asset(AppIcons.languageIcon),
            const SizedBox(height: 16),
            customText(
              text: "Tilni tanlang",
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8),
            const Text(
              "O'zingizga qulay tilni tanlab davom eting",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Language Options
            LanguageOption(
              title: "O'zbek tili",
              subtitle: "Uzbek",
              value: 'uz',
              selectedValue: selectedLanguage,
              flagUrl: AppIcons.uzFlagIcon,
              onTap: () {
                setState(() {
                  selectedLanguage = 'uz';
                });
              },
            ),
            LanguageOption(
              title: "Русский язык",
              subtitle: "Rus tili",
              value: 'ru',
              selectedValue: selectedLanguage,
              flagUrl: AppIcons.ruFlagIcon,
              onTap: () {
                setState(() {
                  selectedLanguage = 'ru';
                });
              },
            ),
            LanguageOption(
              title: "English",
              subtitle: "Ingliz tili",
              value: 'en',
              selectedValue: selectedLanguage,
              flagUrl: AppIcons.enFlagIcon,
              onTap: () {
                setState(() {
                  selectedLanguage = 'en';
                });
              },
            ),

            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: AuthButton(
                title: "Keyingisi",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnboardingScreens(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
