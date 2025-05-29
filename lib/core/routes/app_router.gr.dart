// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AuthNavigationScreen]
class AuthNavigationRoute extends PageRouteInfo<void> {
  const AuthNavigationRoute({List<PageRouteInfo>? children})
    : super(AuthNavigationRoute.name, initialChildren: children);

  static const String name = 'AuthNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthNavigationScreen();
    },
  );
}

/// generated route for
/// [HomeNavigationScreen]
class HomeNavigationRoute extends PageRouteInfo<void> {
  const HomeNavigationRoute({List<PageRouteInfo>? children})
    : super(HomeNavigationRoute.name, initialChildren: children);

  static const String name = 'HomeNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeNavigationScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        HomeRoute.name,
        args: HomeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return HomeScreen(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LessonNavigationScreen]
class LessonNavigationRoute extends PageRouteInfo<void> {
  const LessonNavigationRoute({List<PageRouteInfo>? children})
    : super(LessonNavigationRoute.name, initialChildren: children);

  static const String name = 'LessonNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LessonNavigationScreen();
    },
  );
}

/// generated route for
/// [LessonScheduleNavigationScreen]
class LessonScheduleNavigationRoute extends PageRouteInfo<void> {
  const LessonScheduleNavigationRoute({List<PageRouteInfo>? children})
    : super(LessonScheduleNavigationRoute.name, initialChildren: children);

  static const String name = 'LessonScheduleNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LessonScheduleNavigationScreen();
    },
  );
}

/// generated route for
/// [LessonScheduleScreen]
class LessonScheduleRoute extends PageRouteInfo<void> {
  const LessonScheduleRoute({List<PageRouteInfo>? children})
    : super(LessonScheduleRoute.name, initialChildren: children);

  static const String name = 'LessonScheduleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LessonScheduleScreen();
    },
  );
}

/// generated route for
/// [LessonScreen]
class LessonRoute extends PageRouteInfo<void> {
  const LessonRoute({List<PageRouteInfo>? children})
    : super(LessonRoute.name, initialChildren: children);

  static const String name = 'LessonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LessonScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return ProfileScreen();
    },
  );
}

/// generated route for
/// [OnboardingScreens]
class OnboardingRoutes extends PageRouteInfo<void> {
  const OnboardingRoutes({List<PageRouteInfo>? children})
    : super(OnboardingRoutes.name, initialChildren: children);

  static const String name = 'OnboardingRoutes';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreens();
    },
  );
}

/// generated route for
/// [ProfileNavigationScreen]
class ProfileNavigationRoute extends PageRouteInfo<void> {
  const ProfileNavigationRoute({List<PageRouteInfo>? children})
    : super(ProfileNavigationRoute.name, initialChildren: children);

  static const String name = 'ProfileNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [SelectLanguageScreen]
class SelectLanguageRoute extends PageRouteInfo<void> {
  const SelectLanguageRoute({List<PageRouteInfo>? children})
    : super(SelectLanguageRoute.name, initialChildren: children);

  static const String name = 'SelectLanguageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectLanguageScreen();
    },
  );
}

/// generated route for
/// [SelectUniversityScreen]
class SelectUniversityRoute extends PageRouteInfo<void> {
  const SelectUniversityRoute({List<PageRouteInfo>? children})
    : super(SelectUniversityRoute.name, initialChildren: children);

  static const String name = 'SelectUniversityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectUniversityScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [TabBarScreen]
class TabBarRoute extends PageRouteInfo<void> {
  const TabBarRoute({List<PageRouteInfo>? children})
    : super(TabBarRoute.name, initialChildren: children);

  static const String name = 'TabBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TabBarScreen();
    },
  );
}

/// generated route for
/// [UsefullSectionNavigationScreen]
class UsefullSectionNavigationRoute extends PageRouteInfo<void> {
  const UsefullSectionNavigationRoute({List<PageRouteInfo>? children})
    : super(UsefullSectionNavigationRoute.name, initialChildren: children);

  static const String name = 'UsefullSectionNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UsefullSectionNavigationScreen();
    },
  );
}

/// generated route for
/// [UsefullSectionScreen]
class UsefullSectionRoute extends PageRouteInfo<void> {
  const UsefullSectionRoute({List<PageRouteInfo>? children})
    : super(UsefullSectionRoute.name, initialChildren: children);

  static const String name = 'UsefullSectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UsefullSectionScreen();
    },
  );
}

/// generated route for
/// [VideoLessonScreen]
class VideoLessonRoute extends PageRouteInfo<void> {
  const VideoLessonRoute({List<PageRouteInfo>? children})
    : super(VideoLessonRoute.name, initialChildren: children);

  static const String name = 'VideoLessonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VideoLessonScreen();
    },
  );
}
