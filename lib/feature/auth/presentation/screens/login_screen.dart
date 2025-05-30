import 'package:auto_route/auto_route.dart' show AutoRouterX, RoutePage;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // bool _rememberMe = false;
  bool _obscureText = true;
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80.h),

                  // texts
                  _threeTexts(),
                  SizedBox(height: 40.h),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    // textFields
                    child: Column(
                      children: [
                        TextField(
                          controller: idController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 15.h,
                            ),
                            prefixIconConstraints: BoxConstraints(),
                            prefixIcon: SvgPicture.asset(
                              AppIcons.teacherIcon,
                              width: 26.w,
                              height: 26.w,
                            ),
                            hintText: 'enter_id'.tr(),
                            hintStyle: TextStyle(
                              color: AppColors.greyTextColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Divider(color: Colors.grey),

                        TextField(
                          controller: passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 15.h,
                            ),
                            prefixIconConstraints: BoxConstraints(),
                            prefixIcon: SvgPicture.asset(
                              AppIcons.lockIcon,
                              width: 26.w,
                              height: 26.w,
                            ),
                            hintText: 'enter_password'.tr(),
                            hintStyle: TextStyle(
                              color: AppColors.greyTextColor,
                            ),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: customText(
                        text: 'forget_password'.tr(),
                        textColor: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  _enterButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _enterButton() {
    return ElevatedButton(
      onPressed: () {
        context.router.replace(SelectUniversityRoute());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minimumSize: const Size(double.infinity, 50),
      ),
      child: customText(
        text: 'login'.tr(),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        textColor: AppColors.mainColor,
      ),
    );
  }

  Widget _threeTexts() {
    return Column(
      children: [
        Text(
          'lms'.tr(),
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          'login_app'.tr(),
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'enter_id_password'.tr(),
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.whiteColor, fontSize: 14),
        ),
      ],
    );
  }
}
