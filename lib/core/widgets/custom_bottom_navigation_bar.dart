import 'package:backdropia/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });
  final int currentIndex;
  final ValueChanged<int> onItemTapped;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      onTap: onItemTapped,
      selectedFontSize: 13.sp,
      unselectedFontSize: 11.sp,
      selectedItemColor: Theme.of(context).appBarTheme.titleTextStyle!.color,
      unselectedItemColor: Theme.of(context).appBarTheme.iconTheme!.color,

      currentIndex: currentIndex,
      iconSize: 33,
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            Assets.assetsSvgsHomebar,
            height: 25.h,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.titleTextStyle!.color!,
              BlendMode.srcIn,
            ),
          ),
          label: "Home",
          icon: SvgPicture.asset(
            Assets.assetsSvgsHomebar,
            height: 20.h,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.iconTheme!.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            Assets.assetsSvgsCategoriesbar,
            height: 25.h,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.titleTextStyle!.color!,
              BlendMode.srcIn,
            ),
          ),
          label: "Category",
          icon: SvgPicture.asset(
            Assets.assetsSvgsCategoriesbar,
            height: 20.h,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.iconTheme!.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            Assets.assetsSvgsFavouritesbar,
            height: 25.h,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.titleTextStyle!.color!,
              BlendMode.srcIn,
            ),
          ),
          label: "Favourite",
          icon: SvgPicture.asset(
            Assets.assetsSvgsFavouritesbar,
            height: 20.h,
            colorFilter: ColorFilter.mode(
              Theme.of(context).appBarTheme.iconTheme!.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
