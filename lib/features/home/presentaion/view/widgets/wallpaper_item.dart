import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/wallpaper_entity.dart';
import 'package:backdropia/core/helpers/favourites_feature_functions.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/set_Wallpaper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class WallpaperItem extends StatelessWidget {
  const WallpaperItem({super.key, required this.wallpaper});
  final WallpaperEntity wallpaper;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: SetWallpaper(wallpaperEntity: wallpaper),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.fade,
            );
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: AspectRatio(
              aspectRatio: 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  placeholder: (context, url) {
                    return Container(color: Colors.grey.shade300);
                  },
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: wallpaper.urls.regular ?? testImagePortrait,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 5.w,
          bottom: 5.h,
          child: GestureDetector(
            onTap: () => toggleFavorite(wallpaper),
            child: CircleAvatar(
              backgroundColor: Colors.black45,
              radius: 12.r,
              child: ValueListenableBuilder(
                valueListenable:
                    Hive.box<WallpaperEntity>(kFavoritesBox).listenable(),
                builder: (context, Box<WallpaperEntity> box, _) {
                  bool isFav = box.containsKey(wallpaper.id);

                  return SizedBox(
                    height: 17.h,
                    width: 17.w,
                    child: SvgPicture.asset(
                      isFav
                          ? Assets.assetsSvgsFavouritesbar
                          : Assets.assetsSvgsFavouriteIcon,
                      colorFilter:
                          isFav
                              ? ColorFilter.mode(Colors.red, BlendMode.srcIn)
                              : ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
