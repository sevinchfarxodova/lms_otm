import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/widgets/custom_app_bar.dart';
import 'package:lms_test/feature/lessons/presentation/screens/data_analysis_screen.dart';
import 'package:lms_test/feature/lessons/presentation/widget/tab_item.dart';

@RoutePage()
class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<TabData> tabs = [
    TabData("Darslar", AppIcons.videoLessonIcon),
    TabData("Topshiriqlar", AppIcons.taskIcon),
    TabData("Natijalar", AppIcons.resultIcon),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Ma'lumotlar tahlili"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
              ),
              tabs: List.generate(tabs.length, (index) {
                final isSelected = _tabController.index == index;
                return TabItem(
                  text: tabs[index].text,
                  iconPath: tabs[index].iconPath,
                  isSelected: isSelected,
                );
              }),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  DataAnalysisScreen(),
                  Center(child: Text('Topshiriqlar')),
                  Center(child: Text('Natijalar')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
