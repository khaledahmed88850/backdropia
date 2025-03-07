
import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/helpers/favourites_feature_functions.dart';
import 'package:backdropia/core/helpers/set_wallpaper_functions.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/core/widgets/build_error.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/widgets/favourite_widget.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/widgets/share_widget.dart';
import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'widgets/set_walllpaper_bottom_sheet.dart';

class SetWallpaper extends StatefulWidget {
  const SetWallpaper({super.key, required this.wallpaperEntity});
  final WallpaperEntity wallpaperEntity;

  @override
  State<SetWallpaper> createState() => _SetWallpaperState();
}

class _SetWallpaperState extends State<SetWallpaper> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: isloading,
        child: Stack(
          children: [
            Positioned.fill(
              child:  CachedNetworkImage(
                imageUrl: widget.wallpaperEntity.url.smallS3!,
                fit: BoxFit.fill,
              ),
            ),
           const Positioned.fill(
              child: Blur(
                blurColor: Colors.transparent,
                blur: 5,
                child:  SizedBox.shrink(),
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
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: CachedNetworkImage(
                          imageUrl: widget.wallpaperEntity.url.regular!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     const   DownloadAndSetWidget(
                          image: Assets.assetsSvgsDownload,
                          title: 'Download',
                        ),
                    const    SizedBox(width: 20),
                        DownloadAndSetWidget(
                          image: Assets.assetsSvgsBrush,
                          title: 'SET',
                          onPressed: () {
                            showModalBottomSheet(
                              isDismissible: false,
                              context: context,
                              builder: (context) {
                                return  SetWallpaperBottomSheet(
                                  onTapBoth:
                                      () async => await onTapSetWallpaper(
                                        context: context,
                                        screen: 'both',
                                      ),
                                  onTapLock:
                                      () async => await onTapSetWallpaper(
                                        context: context,
                                        screen: 'lock',
                                      ),
                                  onTapHome:
                                      () async => await onTapSetWallpaper(
                                        context: context,
                                        screen: 'home',
                                      ),
                                );
                              },
                            );
                          },
                        ),
                    const    SizedBox(width: 20),
                        FavouriteWidget(
                          wallpaperEntity: widget.wallpaperEntity,
                          onPressed: () {
                            toggleFavorite(widget.wallpaperEntity);
                          },
                          image:  Assets.assetsSvgsFavouriteIcon,
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
      ),
    );
  }

  Future<void> onTapSetWallpaper({
    required BuildContext context,
    required String screen,
  }) async {
    setState(() {
      isloading = true;
    });

    await setWallpaperFunction(image: widget.wallpaperEntity.url.regular!, screen: screen);
    setState(() {
      isloading = false;
    });
    Navigator.pop(context);

    buildError(context, 'Wallpaper Set', color: Colors.green);
  }
}
