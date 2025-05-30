import 'package:auto_route/auto_route.dart' show AutoRouterX, RoutePage;
import 'package:easy_localization/easy_localization.dart' as easy_localization;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

@RoutePage()
class SelectUniversityScreen extends StatefulWidget {
  const SelectUniversityScreen({super.key});

  @override
  State<SelectUniversityScreen> createState() => _SelectUniversityScreenState();
}

class _SelectUniversityScreenState extends State<SelectUniversityScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<String?> selectedUniversity = ValueNotifier<String?>(
    null,
  );
  List<String> _filteredUniversities = [];
  final List<String> _allUniversities = [
    "Toshkent Davlat Pediatriya Instituti",
    "Toshkent Davlat Texnika Universiteti",
    "Toshkent Axborot Texnologiyalari Universiteti",
    "O'zbekiston Milliy Universiteti",
    "Toshkent Tibbiyot Akademiyasi",
    "Toshkent Davlat Yuridik Universiteti",
    "Toshkent Moliya Instituti",
    "Toshkent Arxitektura-Qurilish Instituti",
    "Toshkent Davlat Iqtisodiyot Universiteti",
    "Toshkent Kimyo-Texnologiya Instituti",
  ];

  @override
  void initState() {
    super.initState();
    _filteredUniversities = _allUniversities;
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredUniversities =
          _allUniversities
              .where((university) => university.toLowerCase().contains(query))
              .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    selectedUniversity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24.h),
              const Icon(Icons.apartment, size: 64, color: Colors.blue),
              SizedBox(height: 16.h),
              customText(
                text: easy_localization.tr('select_university'),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 8.h),
              customText(
                text: easy_localization.tr('select_your_university'),
                textAlign: TextAlign.center,
                textColor: AppColors.greyTextColor,
                fontSize: 14.sp,
              ),
              SizedBox(height: 24.h),
              TextField(
                controller: _searchController,
                style: TextStyle(color: AppColors.mainColor),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColors.mainColor,
                  ),
                  hintStyle: TextStyle(color: AppColors.mainColor),
                  hintText: easy_localization.tr('search'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.mainColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.mainColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: customText(
                  text: easy_localization.tr('all_universities'),
                  textColor: AppColors.greyTextColor,
                  fontSize: 14.sp,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ValueListenableBuilder<String?>(
                  valueListenable: selectedUniversity,
                  builder: (context, selected, _) {
                    return ListView.builder(
                      itemCount: _filteredUniversities.length,

                      itemBuilder: (context, index) {
                        final university = _filteredUniversities[index];
                        final isSelected =
                            _filteredUniversities[index] == selected;
                        return GestureDetector(
                          onTap: () {
                            selectedUniversity.value = university;
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 4.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 10.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color:
                                    isSelected
                                        ? AppColors.mainColor
                                        : Colors.transparent,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(child: customText(text: university)),
                                if (isSelected)
                                  const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: AppColors.mainColor,
                                  ),
                                if (isSelected) SizedBox(width: 8.w),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 50.w,
        height: 50.h,
        child: FloatingActionButton(
          backgroundColor: AppColors.mainColor,
          shape: CircleBorder(),
          child: const Icon(Icons.arrow_forward, color: AppColors.whiteColor),
          onPressed: () {
            if (selectedUniversity.value != null &&
                selectedUniversity.value!.isNotEmpty) {
              context.router.replace(MainRoute());
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.redColor,
                  content: customText(text: "select_university_snackbar".tr()),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
