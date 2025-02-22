import 'package:backdropia/features/home/presentaion/view/widgets/category_header.dart';

import 'package:backdropia/features/home/presentaion/view/widgets/category_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'row_wallpaper_page_view_controller.dart';
import 'search_app_bar.dart';
import 'trending_recent_new_selection.dart';
import 'wallpaper_sliver_grid_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                const SearchAppBar(),
                SizedBox(
                  height: 200.h,
                  width: double.infinity,
                  child: const RowWallpaperPageViewController(),
                ),

                const CategoryHeader(),
                const SizedBox(height: 4),
                SizedBox(height: 70.h, child: CategoryListViewBuilder()),
                const SizedBox(height: 15),
                const TrendingRecentNewSelection(),
                const SizedBox(height: 5),
              ],
            ),
          ),
          const WallpapersSliverGridBuilder(),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
        ],
      ),
    );
  }
}
