import 'package:flutter/material.dart';

import 'wallpaper_item.dart';

class WallpapersSliverGridBuilder extends StatelessWidget {
  const WallpapersSliverGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.6,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 27,
      itemBuilder: (context, index) {
        return const WallpaperItem();
      },
    );
  }
}
