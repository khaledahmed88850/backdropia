import 'package:backdropia/core/services/service_locator.dart';
import 'package:backdropia/features/home/domain/repo/home_repo.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_photos_cubit/get_photos_cubit.dart';
import 'package:backdropia/features/wallpaper_category_presentation.dart/presentation/views/widgets/wallpaper_category_presentation_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WallpaperCategoryPresentationView extends StatelessWidget {
  const WallpaperCategoryPresentationView({super.key, required this.tag});
  final String tag;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetPhotosCubit(getIt<HomeRepo>()),
      child: Scaffold(body: WallpaperCategoryPresentationViewBody(tag: tag)),
    );
  }
}
