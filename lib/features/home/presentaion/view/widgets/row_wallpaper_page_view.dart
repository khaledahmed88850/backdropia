import 'package:backdropia/core/models/wallpaper/wallpaper.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'row_wallpaper.dart';

class RowWallpaperPageView extends StatelessWidget {
  const RowWallpaperPageView({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.wallpapers,
  });
  final List<Wallpaper> wallpapers;
  final PageController pageController;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        RowWallpaper(
          image: wallpapers[0].urls!.regular ?? testImage3,
        ),
        RowWallpaper(
          image: wallpapers[1].urls!.regular ?? testImage2,
        ),
        RowWallpaper(
          image: wallpapers[2].urls!.regular ?? testImage,
        ),
      ],
    );
  }
}
