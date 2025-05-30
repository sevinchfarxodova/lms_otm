import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';

@RoutePage()
class UsefullSectionScreen extends StatefulWidget {
  const UsefullSectionScreen({super.key});

  @override
  State<UsefullSectionScreen> createState() => _UsefullSectionScreenState();
}

class _UsefullSectionScreenState extends State<UsefullSectionScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<List<Map<String, String>>> pages = [
    [
      {'label': 'Talaba ID', 'icon': '👤'},
      {'label': 'Zoom', 'icon': '🎥'},
      {'label': 'Davomat', 'icon': '📅'},
      {'label': 'O\'zlashtirish', 'icon': '💡'},
      {'label': 'Ma\'lumotnoma', 'icon': '📄'},
      {'label': 'Shartnomalar', 'icon': '📂'},
      {'label': 'Talaba hujjati', 'icon': '📘'},
      {'label': 'Nazorat jadvali', 'icon': '📝'},
      {'label': 'Kontrakt to\'lov', 'icon': '💵'},
      {'label': 'Kutubxona', 'icon': '📚'},
      {'label': 'Buyruqlar', 'icon': '🔨'},
      {'label': 'Diplom', 'icon': '🎓'},
    ],
    [
      {'label': 'Konferensiya', 'icon': '👥'},
      {'label': 'Tez orada', 'icon': '⏳'},
      {'label': 'Tez orada', 'icon': '⏳'},
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            // Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: 'Foydali Bo\'limlar',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  customText(
                    text:
                        'Bu yerda o\'zingizga kerakli bo\'lgan ma\'lumotlarni olishingiz mumkin',
                    textColor: AppColors.greyTextColor,
                    fontSize: 16.sp,
                  ),
                  SizedBox(height: 16.h),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Qidirish',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.greyTextColor.withOpacity(0.23),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.greyTextColor.withOpacity(0.23),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // PageVie
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, pageIndex) {
                  final items = pages[pageIndex];
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children:
                          items.map((item) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              color: AppColors.lightMainColor,
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  customText(
                                    text: item['icon']!,
                                    fontSize: 44.sp,
                                  ),
                                  SizedBox(height: 8),
                                  customText(
                                    text: item['label']!,
                                    textAlign: TextAlign.center,
                                    fontSize: 14.sp,
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                    ),
                  );
                },
              ),
            ),

            // Page indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pages.length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  width: _currentPage == index ? 10 : 6,
                  height: _currentPage == index ? 10 : 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
