import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/widgets/share_widget.dart';
import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

class SetWallpaper extends StatelessWidget {
  const SetWallpaper({
    super.key,
    required this.imageUrlRaw,
    required this.imageUrl,
  });
  final String imageUrlRaw;

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.fill),
          ),
          Positioned.fill(
            child: Blur(
              blurColor: Colors.transparent,
              blur: 5,
              child: const SizedBox(),
            ),
          ),

          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.81,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: imageUrlRaw,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShareWidget(
                        image: Assets.assetsSvgsShare,
                        title: 'Share',
                      ),
                      SizedBox(width: 20.w),
                      ShareWidget(
                        image: Assets.assetsSvgsBrush,
                        title: 'SET',
                        onPressed: () async {
                          int location =
                              WallpaperManager
                                  .BOTH_SCREEN; //can be Home/Lock Screen
                          var file = await DefaultCacheManager().getSingleFile(
                            
                            imageUrlRaw,
                          );
                          bool result =
                              await WallpaperManager.setWallpaperFromFile(

                                file.path,
                                location,
                              ); //provide image path
                        },
                      ),
                      SizedBox(width: 20.w),
                      ShareWidget(
                        image: Assets.assetsSvgsFavouriteIcon,
                        title: 'Favourite',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
