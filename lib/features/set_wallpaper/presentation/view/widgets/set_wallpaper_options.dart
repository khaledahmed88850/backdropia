import 'package:backdropia/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WallpaperSetOptions extends StatelessWidget {
  const WallpaperSetOptions({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });
  final String image, text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 35.h, child: SvgPicture.asset(image)),
          const SizedBox(width: 8),
          Text(text, style: Styles.normal16),
        ],
      ),
    );
  }
}
