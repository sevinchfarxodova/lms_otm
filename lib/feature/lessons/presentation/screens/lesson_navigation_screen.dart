import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LessonNavigationScreen extends StatelessWidget {
  const LessonNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
