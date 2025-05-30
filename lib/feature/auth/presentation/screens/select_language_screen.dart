import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:lms_test/core/app_strigngs/app_strings.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/auth/presentation/cubit/language_cubit.dart';
import 'package:lms_test/feature/auth/presentation/widgets/auth_button.dart';
import 'package:lms_test/feature/auth/presentation/widgets/language_option.dart';

@RoutePage()
class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LanguageCubit(),
      child: const _SelectLanguageView(),
    );
  }
}

class _SelectLanguageView extends StatelessWidget {
  const _SelectLanguageView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LanguageCubit, Locale>(
      listener: (context, locale) {
        context.setLocale(locale);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocBuilder<LanguageCubit, Locale>(
            builder: (context, selectedLocale) {
              return Column(
                children: [
                  const SizedBox(height: 30),
                  SvgPicture.asset(AppIcons.languageIcon),
                  const SizedBox(height: 16),
                  customText(
                    text: "select_language".tr(),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 8),
                  customText(
                    text: "choose_your_language".tr(),
                    textColor: AppColors.greyTextColor,
                  ),
                  const SizedBox(height: 24),

                  Column(
                    children: [
                      LanguageOption(
                        title: AppStrings.uzbekTili,
                        subtitle: AppStrings.uzbek,
                        value: 'uz',
                        selectedValue: selectedLocale.languageCode,
                        flagUrl: AppIcons.uzFlagIcon,
                        onTap: () => context.read<LanguageCubit>().changeLanguage('uz'),
                      ),
                      LanguageOption(
                        title: AppStrings.rustili,
                        subtitle: AppStrings.russian,
                        value: 'ru',
                        selectedValue: selectedLocale.languageCode,
                        flagUrl: AppIcons.ruFlagIcon,
                        onTap: () => context.read<LanguageCubit>().changeLanguage('ru'),
                      ),
                      LanguageOption(
                        title: AppStrings.inglizTili,
                        subtitle: AppStrings.english,
                        value: 'en',
                        selectedValue: selectedLocale.languageCode,
                        flagUrl: AppIcons.enFlagIcon,
                        onTap: () => context.read<LanguageCubit>().changeLanguage('en'),
                      ),
                    ],
                  ),

                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AuthButton(
                      title: "next".tr(),
                      onPressed: () {
                        context.router.push(OnboardingRoutes());
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
