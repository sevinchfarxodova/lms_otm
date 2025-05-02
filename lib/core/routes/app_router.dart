import 'package:auto_route/auto_route.dart';
import 'package:lms_test/core/routes/guards/auth_guard.dart';
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
import 'package:lms_test/feature/others/presentation/screens/nimadir_screen.dart';
import 'package:lms_test/feature/others/presentation/screens/others_navigation_screen.dart';
import 'package:lms_test/feature/performance/presentation/screens/performance_navigation_screen.dart';
import 'package:lms_test/feature/performance/presentation/screens/performance_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(
          page: AuthNavigationRoute.page,
          // initial: true,
          children: [
            AutoRoute(page: SplashRoute.page, initial: true),
            AutoRoute(page: SelectLanguageRoute.page),
            AutoRoute(page: OnboardingRoutes.page),
            AutoRoute(page: SelectUniversityRoute.page),
            AutoRoute(page: LoginRoute.page),
          ],
        ),
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
          children: [AutoRoute(page: LessonRoute.page, initial: true)],
        ),
        AutoRoute(
          page: OthersNavigationRoute.page,
          children: [AutoRoute(page: NimadirRoute.page, initial: true)],
        ),
        AutoRoute(
          page: PerformanceNavigationRoute.page,
          children: [AutoRoute(page: PerformanceRoute.page, initial: true)],
        ),
      ],
    ),
  ];

  @override
  List<AutoRouteGuard> get guards => [AuthGuard()];
}
