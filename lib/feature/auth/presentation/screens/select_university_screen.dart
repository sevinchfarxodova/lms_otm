import 'package:auto_route/auto_route.dart' show RoutePage;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/auth/presentation/screens/login_screen.dart';

@RoutePage()
class SelectUniversityScreen extends StatefulWidget {
  const SelectUniversityScreen({super.key});

  @override
  State<SelectUniversityScreen> createState() => _SelectUniversityScreenState();
}

class _SelectUniversityScreenState extends State<SelectUniversityScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _allUniversities = List.generate(
    10,
    (_) => "Toshkent Davlat Pediatriya instituti",
  );
  List<String> _filteredUniversities = [];

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const Icon(Icons.apartment, size: 64, color: Colors.blue),
              const SizedBox(height: 16),
              customText(
                text: "select_university".tr(),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 8),
              customText(
                text: "choose_your_university".tr(),
                textAlign: TextAlign.center,
                textColor: AppColors.greyTextColor,
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "search".tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: customText(
                  text: "all_universities".tr(),
                  textColor: AppColors.greyTextColor,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredUniversities.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(_filteredUniversities[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
    );
  }
}
