import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lms_test/core/utils/custom_text.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              SizedBox(height: 16.h),
              const VideoDarsSection(),
              SizedBox(height: 16.h),
              const CurrentActivitySection(),
              SizedBox(height: 20.h),
              const SemesterStatsSection(),
              SizedBox(height: 20.h),
              const AssignmentsSection(),
            ],
          ),
        ),
      ),
    );
  }
}