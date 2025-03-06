import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/helpers/favourites_feature_functions.dart';
import 'package:backdropia/core/widgets/custom_app_bar.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/wallpaper_item.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key, required this.controller});
  final PersistentTabController controller;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context: context, title: 'Favourites' 
       , onPressed: () {
         controller.index = 0;
       },),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<WallpaperEntity>(kFavoritesBox).listenable(),
        builder: (context, Box<WallpaperEntity> box, _) {
          final favorites = getFavoriteWallpapers();

          if (favorites.isEmpty) {
            return Center(child: Text('No favorites yet!'));
          }

          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final wallpaper = favorites[index];

                return  WallpaperItem(wallpaper: wallpaper);
              },
            ),
          );
        },
      ),
    );
  }
}
