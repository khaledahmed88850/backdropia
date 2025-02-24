import 'package:backdropia/constants.dart';
import 'package:backdropia/core/models/wallpaper/wallpaper.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WallpaperItem extends StatelessWidget {
  const WallpaperItem({super.key, required this.wallpaper});
  final Wallpaper wallpaper;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: AspectRatio(
            aspectRatio: 0.6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: CachedNetworkImage(
                imageUrl: wallpaper.urls!.regular ?? testImagePortrait,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: 5.w,
          bottom: 5.h,
          child: CircleAvatar(
            backgroundColor: Colors.black45,
            radius: 12.r,
            child: Center(
              child: SvgPicture.asset(
                Assets.assetsSvgsFavouriteIcon,
                height: 15.h,
                width: 15.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
