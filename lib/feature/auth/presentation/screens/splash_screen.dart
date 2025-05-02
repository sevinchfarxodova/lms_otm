import 'package:auto_route/auto_route.dart' show RoutePage;
import 'package:flutter/material.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/feature/auth/presentation/screens/select_language_screen.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SelectLanguageScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.mainColor,
      body: Center(
        child: Text(
          "Welcome to My App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}