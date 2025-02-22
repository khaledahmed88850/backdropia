import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'row_wallpaper.dart';

class RowWallpaperPageView extends StatelessWidget {
  const RowWallpaperPageView({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });
  final PageController pageController;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        RowWallpaper(image: testImage3),
        RowWallpaper(image: testImage2),
        RowWallpaper(image: testImage),
      ],
    );
  }
}
