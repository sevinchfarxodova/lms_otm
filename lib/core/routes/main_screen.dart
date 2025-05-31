import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/routes/app_router.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';

final icons = [
  AppIcons.homeIcon,
  AppIcons.calendarIcon,
  AppIcons.bookIcon,
  AppIcons.usefullIcon,
  AppIcons.profileIcon,
];

final labels = ["Asosiy", "Dars jadvali", "Fanlar", "Foydali", "Profil"];

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeNavigationRoute(),
        LessonScheduleNavigationRoute(),
        LessonNavigationRoute(),
        UsefullSectionNavigationRoute(),
        ProfileNavigationRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.whiteColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: AppColors.greyTextColor,
            showUnselectedLabels: true,
            items: List.generate(icons.length, (index) {
              return BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  icons[index],
                  color:
                      tabsRouter.activeIndex == index
                          ? AppColors.mainColor
                          : AppColors.greyTextColor,
                ),
                label: labels[index],
              );
            }),
          ),
        );
      },
    );
  }
}
