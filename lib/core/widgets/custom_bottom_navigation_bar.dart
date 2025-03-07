import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/category/presentation/view/category_view.dart';
import 'package:backdropia/features/favourites/presentation/view/favourites_view.dart';
import 'package:backdropia/features/home/presentaion/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          false, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,

      backgroundColor: Theme.of(context).appBarTheme.backgroundColor!,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),

      navBarHeight: kBottomNavigationBarHeight,

      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeView(controller: _controller),
      CategoryView(controller: _controller),
      FavouritesView(controller: _controller,),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          Assets.assetsSvgsHomebar,
          colorFilter: ColorFilter.mode(
            Theme.of(context).appBarTheme.iconTheme!.color!,
            BlendMode.srcIn,
          ),
        ),
        icon: SvgPicture.asset(
          Assets.assetsSvgsHomebar,
          colorFilter: ColorFilter.mode(
            Theme.of(context).appBarTheme.actionsIconTheme!.color!,
            BlendMode.srcIn,
          ),
        ),
        title: ("Home"),
        activeColorPrimary: Theme.of(context).appBarTheme.titleTextStyle!.color!,
        textStyle: Styles.normal13.copyWith(color: Color(0xFF292D32)),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => _buildScreens()[0],
            "/second": (final context) => _buildScreens()[1],
            "/third": (final context) => _buildScreens()[2],
          },
        ),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          Assets.assetsSvgsCategoriesbar,
          colorFilter: ColorFilter.mode(
            Theme.of(context).appBarTheme.iconTheme!.color!,
            BlendMode.srcIn,
          ),
        ),
        icon: SvgPicture.asset(
          Assets.assetsSvgsCategoriesbar,
          colorFilter: ColorFilter.mode(
            Theme.of(context).appBarTheme.actionsIconTheme!.color!,
            BlendMode.srcIn,
          ),
        ),
        title: ("Category"),
        textStyle: Styles.normal13.copyWith(color: Color(0xFF292D32)),
        activeColorPrimary: Theme.of(context).appBarTheme.titleTextStyle!.color!,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => _buildScreens()[0],
            "/second": (final context) => _buildScreens()[1],
            "/third": (final context) => _buildScreens()[2],
          },
        ),
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: SvgPicture.asset(
          Assets.assetsSvgsFavouritesbar,
          colorFilter: ColorFilter.mode(
            Theme.of(context).appBarTheme.iconTheme!.color!,
            BlendMode.srcIn,
          ),
        ),
        icon: SvgPicture.asset(
          Assets.assetsSvgsFavouritesbar,
      colorFilter: ColorFilter.mode(
            Theme.of(context).appBarTheme.actionsIconTheme!.color!,
            BlendMode.srcIn,
          ),
        ),
        title: ("Favourite"),
        textStyle: Styles.normal13.copyWith(color: Color(0xFF292D32)),
        activeColorPrimary: Theme.of(context).appBarTheme.titleTextStyle!.color!,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/first": (final context) => _buildScreens()[0],
            "/second": (final context) => _buildScreens()[1],
            "/third": (final context) => _buildScreens()[2],
          },
        ),
      ),
    ];
  }
}
