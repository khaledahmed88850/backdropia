import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/helpers/favourites_feature_functions.dart';
import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavouriteWidget extends StatelessWidget {
  const FavouriteWidget({
    super.key,
    required this.image,
    required this.title,
    this.onPressed,
    required this.wallpaperEntity,
  });
  final String image;
  final WallpaperEntity wallpaperEntity;
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 18.r,
          backgroundColor: const Color(0x73000000),
          child: ValueListenableBuilder(
            valueListenable:
                Hive.box<WallpaperEntity>(kFavoritesBox).listenable(),
            builder: (context, value, child) {
              final isFavourite = isFavorited(wallpaperEntity.id);

              return IconButton(
                icon: SvgPicture.asset(
                  isFavourite
                      ?  Assets.assetsSvgsFavouritesbar
                      : Assets.assetsSvgsFavouriteIcon,
                  colorFilter:
                      isFavourite
                          ? ColorFilter.mode(const Color(0xFFF44336), BlendMode.srcIn)
                          : ColorFilter.mode(const Color(0xFFFFFFFF), BlendMode.srcIn),
                ),
                onPressed: onPressed,
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 50.w,

          height: 20.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: const Color(0x73000000),
          ),
          child: Center(
            child: Text(
              title,
              style: Styles.semiBold13.copyWith(
                color: const Color(0xffffffff),
                fontSize: 10.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
