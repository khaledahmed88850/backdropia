import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/utils/dummy_wallpaper.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_photos_cubit/get_photos_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'wallpaper_item.dart';

class WallpapersSliverGridBuilder extends StatefulWidget {
  const WallpapersSliverGridBuilder({super.key});
  @override
  State<WallpapersSliverGridBuilder> createState() =>
      _WallpapersSliverGridBuilderState();
}

class _WallpapersSliverGridBuilderState
    extends State<WallpapersSliverGridBuilder> {
  GetParamsModel getParamsModel = GetParamsModel(
    perPage: 80,
    query: '',
    page: 6,
    orderBy: 'latest',
    orientation: 'portrait',
  );

  @override
  void initState() {
    context.read<GetPhotosCubit>().getPhotos(getParamsModel: getParamsModel);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPhotosCubit, GetPhotosState>(
      builder: (context, state) {
        if (state is GetPhotosSuccess) {
          return SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: state.wallpapers.length,
            itemBuilder: (context, index) {
              return WallpaperItem(wallpaper: state.wallpapers[index]);
            },
          );
        } else if (state is GetPhotosLoading) {
          return Skeletonizer.sliver(
            enabled: true,
            child: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.6,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: getDummyWallpaper().length,
              itemBuilder: (context, index) {
                return WallpaperItem(wallpaper: getDummyWallpaper()[index]);
              },
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: const CircularProgressIndicator(color: Colors.black),
            ),
          );
        }
      },
    );
  }
}
