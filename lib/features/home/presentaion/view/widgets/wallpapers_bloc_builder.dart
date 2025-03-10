import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/utils/dummy_wallpaper.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_photos_cubit/get_photos_cubit.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/wallpaper_sliver_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeWallpapersBlocBuilder extends StatefulWidget {
  const HomeWallpapersBlocBuilder({super.key});
  @override
  State<HomeWallpapersBlocBuilder> createState() =>
      _HomeWallpapersBlocBuilderState();
}

class _HomeWallpapersBlocBuilderState extends State<HomeWallpapersBlocBuilder> {
  @override
  void initState() {
    context.read<GetPhotosCubit>().getPhotos(
      getParamsModel: GetParamsModel(
        perPage: 50,
        query: '',
        page: 1,
        orientation: 'portrait',
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPhotosCubit, GetPhotosState>(
      builder: (context, state) {
        if (state is GetPhotosSuccess) {
          return WallpaperSliverGridBuilder(wallpapers: state.wallpapers);
        } else if (state is GetPhotosLoading) {
          return Skeletonizer.sliver(
            enabled: true,
            child: WallpaperSliverGridBuilder(wallpapers: getDummyWallpaper()),
          );
        } else {
          return SliverToBoxAdapter(
            child: const Center(
              child: CircularProgressIndicator(color: Colors.black),
            ),
          );
        }
      },
    );
  }
}
