import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/widgets/share_widget.dart';
import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/set_wallpaper_options.dart';

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
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 8.h),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 160.w,
                                      ),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 5,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'What would you like to do?',
                                      style: Styles.semiBold18,
                                    ),
                                    SizedBox(height: 16.h),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 8),
                                            Padding(
                                              padding:  EdgeInsets.symmetric(horizontal: 7.w),
                                              child: WallpaperSetOptions(
                                                text: 'Set on home screen',
                                                image:
                                                    Assets
                                                        .assetsSvgsPhoneHomeScreen,
                                              ),
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                              thickness: 1,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.symmetric(horizontal: 7.w),
                                              child: WallpaperSetOptions(
                                                text: 'Set on lock screen',
                                                image:
                                                    Assets
                                                        .assetsSvgsPhoneLockScreen,
                                              ),
                                            ),
                                             Divider(
                                              color: Colors.grey,
                                              thickness: 1,
                                              height: 20,
                                            ),
                                            WallpaperSetOptions(
                                              text: 'Set on both screens',
                                              image:
                                                  Assets
                                                      .assetsSvgsPhoneBothScreens,
                                            ),
                                            const SizedBox(height: 8),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
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




// int location =
//                               WallpaperManager
//                                   .BOTH_SCREEN; //can be Home/Lock Screen
//                           var file = await DefaultCacheManager().getSingleFile(
//                             imageUrlRaw,
//                           );
//                           bool result =
//                               await WallpaperManager.setWallpaperFromFile(
//                                 file.path,
//                                 location,
//                               ); //p