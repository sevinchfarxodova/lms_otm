import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerContainer extends StatelessWidget {
  const DividerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 40.h, width: 1.w, color: Colors.grey.shade300);
  }
}
