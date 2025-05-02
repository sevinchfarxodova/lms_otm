import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lms_test/core/utils/custom_text.dart';

@RoutePage()
class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customText(text: "Lessons Screen")
        ],
      ),
    );
  }
}