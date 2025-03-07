import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:flutter/material.dart';

import 'wallpaper_item.dart';

class WallpaperSliverGridBuilder extends StatelessWidget {
  const WallpaperSliverGridBuilder({super.key, required this.wallpapers});
  final List<WallpaperEntity> wallpapers;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.6,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: wallpapers.length,
      itemBuilder: (context, index) {
        return WallpaperItem(wallpaper: wallpapers[index]);
      },
    );
  }
}