import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LessonScheduleNavigationScreen extends StatelessWidget {
  const LessonScheduleNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}