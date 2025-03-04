import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/features/set_wallpaper/presentation/view/widgets/set_wallpaper_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class SetWallpaperBottomSheet extends StatelessWidget {
  const SetWallpaperBottomSheet({
    super.key,
    this.onTapHome,
    this.onTapLock,
    this.onTapBoth,
  });
  final VoidCallback? onTapHome;
  final VoidCallback? onTapLock;
  final VoidCallback? onTapBoth;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4.h,
      decoration: ShapeDecoration(
        color: Colors.white,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 160.w),
            child: Divider(color: Colors.grey, thickness: 5),
          ),
          SizedBox(height: 8.h),
          Text('What would you like to do?', style: Styles.semiBold18),
          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: WallpaperSetOptions(
                      onTap: onTapHome,
                      text: 'Set on home screen',
                      image: Assets.assetsSvgsPhoneHomeScreen,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 1, height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: WallpaperSetOptions(
                      onTap: onTapLock,
                      text: 'Set on lock screen',
                      image: Assets.assetsSvgsPhoneLockScreen,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 1, height: 20),
                  WallpaperSetOptions(
                    onTap: onTapBoth,
                    text: 'Set on both screens',
                    image: Assets.assetsSvgsPhoneBothScreens,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
