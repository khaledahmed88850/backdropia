import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:flutter/material.dart';

import 'row_wallpaper.dart';

class RowWallpaperPageView extends StatelessWidget {
  const RowWallpaperPageView({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.wallpapers,
  });
  final List<WallpaperEntity> wallpapers;
  final PageController pageController;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return  PageView(
      controller: pageController,
      children: [
        RowWallpaper(image:  wallpapers[0].url.small!),
        RowWallpaper(image: wallpapers[1].url.small!),
        RowWallpaper(image: wallpapers[2].url.small!),
      ],
    );
  }
}
