import 'dart:async';

import 'package:backdropia/features/home/presentaion/view/widgets/row_wallpaper_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowWallpaperPageViewController extends StatefulWidget {
  const RowWallpaperPageViewController({super.key});

  @override
  State<RowWallpaperPageViewController> createState() =>
      _RowWallpaperPageViewControllerState();
}

class _RowWallpaperPageViewControllerState
    extends State<RowWallpaperPageViewController> {
  int currentIndex = 0;
  late PageController pageController;
  Timer? _timer;
  @override
  void initState() {
    pageController = PageController();
    startRowWallpapersAnimation();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: RowWallpaperPageView(
            pageController: pageController,
            currentIndex: currentIndex,
          ),
        ),
        SizedBox(height: 5.h),
        DotsIndicator(
          animationDuration: Duration(milliseconds: 500),

          animate: true,
          dotsCount: 3,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: Color(0xFF888888),
            color: Color(0xFFC3C2C2),
            size: const Size.square(9),
            activeSize: const Size(22, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }

  void startRowWallpapersAnimation() {
    _timer = Timer.periodic(Duration(seconds: 15), (timer) {
      pageController.jumpToPage(currentIndex == 2 ? 0 : currentIndex + 1);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
