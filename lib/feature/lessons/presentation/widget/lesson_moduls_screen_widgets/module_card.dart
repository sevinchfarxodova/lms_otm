// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lms_test/core/utils/custom_text.dart';
// import 'package:lms_test/core/widgets/custom_circular_progress_indicator_grad.dart';

// class ModuleCard extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final double progressPercent;
//   final bool isExpanded;
//   final List<Widget> materials;
//   final VoidCallback onToggleExpand;
//   const ModuleCard({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.progressPercent,
//     required this.isExpanded,
//     required this.materials,
//     required this.onToggleExpand,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 2.0,
//       child: Column(
//         children: [
//           InkWell(
//             onTap: onToggleExpand,
//             child: Padding(
//               padding: EdgeInsets.all(10.w),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         customText(
//                           text: title,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         customText(
//                           text: subtitle,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ],
//                     ),
//                   ),
//                   CustomCircularProgressIndicatorGrad(progressValue: 90),
//                   Icon(
//                     isExpanded ? Icons.expand_less : Icons.expand_more,
//                     size: 30,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Divider(),
//           AnimatedSwitcher(
//             duration: const Duration(milliseconds: 300),
//             transitionBuilder: (Widget child, Animation<double> animation) {
//               return SizeTransition(sizeFactor: animation, child: child);
//             },
//             child:
//                 isExpanded
//                     ? Column(
//                       key: ValueKey<bool>(isExpanded),
//                       children: materials,
//                     )
//                     : const SizedBox.shrink(),
//           ),
//         ],
//       ),
//     );
//   }
// }
