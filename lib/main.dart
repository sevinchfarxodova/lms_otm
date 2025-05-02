import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/feature/auth/presentation/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen()),
      // child: MaterialApp.router(routerConfig: _appRouter.config()),
    );
  }
}
