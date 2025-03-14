import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/helpers/favourites_feature_functions.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/set_Wallpaper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WallpaperItem extends StatelessWidget {
  const WallpaperItem({super.key, required this.wallpaper});
  final WallpaperEntity wallpaper;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder:
                    (context, animation, secondaryAnimation) =>
                        SetWallpaper(wallpaperEntity: wallpaper),
                transitionsBuilder: (
                  context,
                  animation,
                  secondaryAnimation,
                  child,
                ) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            );
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: AspectRatio(
              aspectRatio: 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: wallpaper.url.smallS3!,
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
              backgroundColor: const Color(0x73000000),
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
                              ? const ColorFilter.mode(
                                Colors.red,
                                BlendMode.srcIn,
                              )
                              : const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
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
