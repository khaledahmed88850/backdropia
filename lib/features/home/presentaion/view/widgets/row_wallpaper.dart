import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowWallpaper extends StatelessWidget {
  const RowWallpaper({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Animate(
      effects: [
        FadeEffect(curve: Curves.easeIn, duration: Duration(milliseconds: 600)),
      ],
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child:  CachedNetworkImage(
          placeholder: (context, url) {
            return Container(color: Colors.grey.shade300);
          },
          imageUrl: image,
          height: 200.h,
          width: double.infinity,
          fadeInCurve: Curves.easeIn,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
