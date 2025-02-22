import 'package:backdropia/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WallpaperItem extends StatelessWidget {
  const WallpaperItem({super.key});

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
                imageUrl: testImagePortrait,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: 5.w,
          bottom: 5.h,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black45,
            ),
            child: Center(
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 18.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
