import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/feature/auth/presentation/screens/login_screen.dart';
import 'package:lms_test/feature/auth/presentation/screens/splash_screen.dart';
import 'package:lms_test/feature/home/presentation/screens/home_screen.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/screens/lesson_schedule_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale("en"), Locale("uz"), Locale("ru")],
      path: "assets/translations",
      fallbackLocale: const Locale("uz"),
      saveLocale: true,
      startLocale: Locale("uz"),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        // home: SplashScreen(),
        // home: HomeScreen(),
        home: LessonScheduleScreen(),
      ),
      // child: MaterialApp.router(routerConfig: _appRouter.config()),
    );
  }
}