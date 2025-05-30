import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lms_test/core/routes/main_screen.dart';
import 'package:lms_test/feature/auth/presentation/screens/auth_navigation_screen.dart';
import 'package:lms_test/feature/auth/presentation/screens/login_screen.dart';
import 'package:lms_test/feature/auth/presentation/screens/onboarding_screens.dart';
import 'package:lms_test/feature/auth/presentation/screens/select_language_screen.dart';
import 'package:lms_test/feature/auth/presentation/screens/select_university_screen.dart';
import 'package:lms_test/feature/auth/presentation/screens/splash_screen.dart';
import 'package:lms_test/feature/home/presentation/screens/home_navigation_screen.dart';
import 'package:lms_test/feature/home/presentation/screens/home_screen.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/screens/lesson_schedule_navigation_screen.dart';
import 'package:lms_test/feature/lesson_schedule/presentation/screens/lesson_schedule_screen.dart';
import 'package:lms_test/feature/lessons/presentation/screens/lesson_navigation_screen.dart';
import 'package:lms_test/feature/lessons/presentation/screens/lessons_screen.dart';
import 'package:lms_test/feature/lessons/presentation/screens/tab_bar_screen.dart';
import 'package:lms_test/feature/lessons/presentation/screens/video_lesson_screen.dart';
import 'package:lms_test/feature/profile/presentation/screens/profile_screen.dart';
import 'package:lms_test/feature/profile/presentation/screens/profile_navigation_screen.dart';
import 'package:lms_test/feature/useful_section/presentation/screens/usefull_section_navigation_screen.dart';
import 'package:lms_test/feature/useful_section/presentation/screens/usefull_section_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: AuthNavigationRoute.page,
      initial: true,
      children: [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: SelectLanguageRoute.page),
        AutoRoute(page: OnboardingRoutes.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SelectUniversityRoute.page),
      ],
    ),
    AutoRoute(
      page: MainRoute.page,
      children: [
        AutoRoute(
          page: HomeNavigationRoute.page,
          children: [AutoRoute(page: HomeRoute.page, initial: true)],
        ),
        AutoRoute(
          page: LessonScheduleNavigationRoute.page,
          children: [AutoRoute(page: LessonScheduleRoute.page, initial: true)],
        ),
        AutoRoute(
          page: LessonNavigationRoute.page,
          children: [
            AutoRoute(page: LessonRoute.page, initial: true),
            AutoRoute(page: TabBarRoute.page),
            AutoRoute(page: VideoLessonRoute.page)
          ],
        ),
        AutoRoute(
          page: ProfileNavigationRoute.page,
          children: [AutoRoute(page: ProfileRoute.page, initial: true)],
        ),
        AutoRoute(
          page: UsefullSectionNavigationRoute.page,
          children: [AutoRoute(page: UsefullSectionRoute.page, initial: true)],
        ),
      ],
    ),
  ];

  // @override
  // List<AutoRouteGuard> get guards => [AuthGuard()];
}
