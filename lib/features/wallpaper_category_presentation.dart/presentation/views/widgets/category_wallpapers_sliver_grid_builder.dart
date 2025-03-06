import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/utils/dummy_wallpaper.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_photos_cubit/get_photos_cubit.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/wallpaper_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryWallpapersSliverGridBuilder extends StatefulWidget {
  const CategoryWallpapersSliverGridBuilder({
    super.key,
    required this.getParamsModel,
  });
  final GetParamsModel getParamsModel;
  @override
  State<CategoryWallpapersSliverGridBuilder> createState() =>
      _CategoryWallpapersSliverGridBuilderState();
}

class _CategoryWallpapersSliverGridBuilderState
    extends State<CategoryWallpapersSliverGridBuilder> {
  @override
  void initState() {
    context.read<GetPhotosCubit>().getPhotosByCategory(
      getParamsModel: widget.getParamsModel,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPhotosCubit, GetPhotosState>(
      builder: (context, state) {
        if (state is GetPhotosSuccess) {
          return SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: state.wallpapers.length,
            itemBuilder: (context, index) {
              return  WallpaperItem(wallpaper: state.wallpapers[index],);
            },
          );
        } else if (state is GetPhotosLoading) {
          return Skeletonizer.sliver(
            enabled: true,
            child: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: getDummyWallpaper().length,
              itemBuilder: (context, index) {
                return WallpaperItem(wallpaper: getDummyWallpaper()[index] ,);
              },
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child:  CircularProgressIndicator(color: Colors.black),
            ),
          );
        }
      },
    );
  }
}
