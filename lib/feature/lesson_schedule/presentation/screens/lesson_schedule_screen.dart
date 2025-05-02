import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lms_test/core/utils/custom_text.dart';

@RoutePage()
class LessonScheduleScreen extends StatelessWidget {
  const LessonScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customText(text: "Lesson Schedule Screen")
        ],
      ),
    );
  }
}