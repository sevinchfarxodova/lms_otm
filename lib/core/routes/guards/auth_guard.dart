// import 'package:auto_route/auto_route.dart';
// import 'package:lms_test/core/routes/app_router.dart';
// import 'package:lms_test/feature/auth/data/service/auth_state_service.dart';

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) async {
//     final isLoggedIn = AuthStateService().isLoggedIn;
//     print(isLoggedIn);

//     if (!isLoggedIn) {
//       print("not logged in");
//       // resolver.redirectUntil(LoginRoute());
//       router.replace(LoginRoute());


//       // resolver.next();
//     } else {
//       print(" logged in");

//       resolver.next();
//     }
//   }
// }
