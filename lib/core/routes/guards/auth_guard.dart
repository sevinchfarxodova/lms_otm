import 'package:auto_route/auto_route.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/feature/auth/data/service/auth_state_service.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isLoggedIn = AuthStateService().isLoggedIn;

    if (!isLoggedIn) {
      router.replace(SplashRoute());
      resolver.next();
    } else {
      resolver.next();
    }
  }
}
