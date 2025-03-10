import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/helpers/favourites_feature_functions.dart';
import 'package:backdropia/core/helpers/indexed_stack_provider.dart';
import 'package:backdropia/core/widgets/custom_app_bar.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/wallpaper_item.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: buildAppBar(
            context: context,
            title: 'Favourites',
            onPressed: () {
              Provider.of<IndexStackProvider>(
                context,
                listen: false,
              ).setIndex(0);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: ValueListenableBuilder(
            valueListenable:
                Hive.box<WallpaperEntity>(kFavoritesBox).listenable(),
            builder: (context, Box<WallpaperEntity> box, _) {
              final favorites = getFavoriteWallpapers();

              if (favorites.isEmpty) {
                return const Column(
                  children: [SizedBox(height: 300), Text('No favorites yet!')],
                );
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final wallpaper = favorites[index];

                    return WallpaperItem(wallpaper: wallpaper);
                  },
                ),
              );
            },
          ),
        ),
        SliverToBoxAdapter(child: const SizedBox(height: 15)),
      ],
    );
  }
}
