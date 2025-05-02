import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lms_test/core/utils/custom_text.dart';

// Dizayn hali qo'shilmagan.Auto routerga screen kerakligi uchun yozdim. Dizayn qo'shilmaguncha tegmang
@RoutePage()
class NimadirScreen extends StatelessWidget {
  const NimadirScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customText(text: "Nimadir screen")
        ],
      ),
    );
  }
}