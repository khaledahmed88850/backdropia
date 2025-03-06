import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_photos_cubit/get_photos_cubit.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/category_header.dart';

import 'package:backdropia/features/home/presentaion/view/widgets/category_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'row_wallpaper_page_view_controller.dart';
import 'search_app_bar.dart';
import 'trending_recent_new_selection.dart';
import 'wallpaper_sliver_grid_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, required this.controller});
  final PersistentTabController controller;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int pageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                const SearchAppBar(),
                const SizedBox(height: 8),
                SizedBox(
                  height: 200.h,
                  width:  double.infinity,
                  child: const RowWallpaperPageViewController(),
                ),

                CategoryHeader(
                  onTap: () {
                    widget.controller.index = 1;
                  },
                ),
                const SizedBox(height: 4),
                SizedBox(height: 70.h, child: CategoryListViewBuilder()),
                const SizedBox(height: 15),
                TrendingRecentNewSelection(
                  onTap: (value) {
                    if (pageNumber == value + 1) {
                      return;
                    } else {
                      if (value == 0) {
                        pageNumber = 1;
                      }
                      if (value == 1) {
                        pageNumber = 2;
                      } else if (value == 2) {
                        pageNumber = 3;
                      }
                      context.read<GetPhotosCubit>().getPhotos(
                        getParamsModel: GetParamsModel(
                          perPage: 80,
                          query: '',
                          page: pageNumber,
                          orientation: 'portrait',
                        ),
                      );

                      setState(() {});
                    }
                  },
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          const HomeWallpapersSliverGridBuilder(),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
        ],
      ),
    );
  }
}
