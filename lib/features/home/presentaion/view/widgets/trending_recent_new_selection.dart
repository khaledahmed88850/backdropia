import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/trending_recent_new_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingRecentNewSelection extends StatefulWidget {
  const TrendingRecentNewSelection({super.key, required this.onTap});
  final ValueChanged<int> onTap;
  @override
  State<TrendingRecentNewSelection> createState() =>
      _TrendingRecentNewSelectionState();
}

class _TrendingRecentNewSelectionState
    extends State<TrendingRecentNewSelection> {
  int index = 0;
  List<String> images = [
    Assets.assetsSvgsTrending,
    Assets.assetsSvgsRecent,
    Assets.assetsSvgsNew,
  ];
  List<String> titles = ['Trending', 'Recent', 'New'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      width: double.infinity,
      height: 60.h,
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(images.length, (index) {
          return TrendingRecentNewItem(
            title: titles[index],
            isSelected: index == this.index,
            image: images[index],
            onTap: () {
              setState(() {
                widget.onTap(index);
                this.index = index;
              });
            },
          );
        }),
      ),
    );
  }
}
