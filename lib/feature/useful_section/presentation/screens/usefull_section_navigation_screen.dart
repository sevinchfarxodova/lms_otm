import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UsefullSectionNavigationScreen extends StatelessWidget {
  const UsefullSectionNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}