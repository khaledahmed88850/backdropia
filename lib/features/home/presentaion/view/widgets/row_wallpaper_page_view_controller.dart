import 'dart:async';

import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/utils/dummy_wallpaper.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_random_photos_cubit/get_random_photos_cubit.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_random_photos_cubit/get_random_photos_state.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/row_wallpaper_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RowWallpaperPageViewController extends StatefulWidget {
  const RowWallpaperPageViewController({super.key});

  @override
  State<RowWallpaperPageViewController> createState() =>
      _RowWallpaperPageViewControllerState();
}

class _RowWallpaperPageViewControllerState
    extends State<RowWallpaperPageViewController> {
  Timer? _timer;
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    context.read<GetRandomPhotosCubit>().getRandomPhotos(
      getParamsModel: GetParamsModel(query: '', orientation: 'landscape'),
    );
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.toInt();
      });
    });
    excuteTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<GetRandomPhotosCubit, GetRandomPhotosState>(
          builder: (context, state) {
            if (state is GetRandomPhotosSuccess) {
              return Expanded(
                child: RowWallpaperPageView(
                  wallpapers: state.wallpapers,
                  pageController: pageController,
                  currentIndex: currentIndex,
                ),
              );
            } else if (state is GetRandomPhotosFailure) {
              return Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error),
                    const SizedBox(width: 8),
                    Text(state.errorMessage),
                  ],
                ),
              );
            } else {
              return Expanded(
                child: Skeletonizer(
                  child: RowWallpaperPageView(
                    wallpapers: getDummyWallpaper(),
                    pageController: pageController,
                    currentIndex: currentIndex,
                  ),
                ),
              );
            }
          },
        ),
        const SizedBox(height: 5),
        DotsIndicator(
          animationDuration: Duration(milliseconds: 500),

          animate: true,
          dotsCount: 3,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: const Color(0xFF888888),
            color: const Color(0xFFC3C2C2),
            size: const Size.square(9),
            activeSize: const Size(22, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }

  excuteTimer() {
    _timer = Timer.periodic(const Duration(seconds: 15), (timer) {
      pageController.jumpToPage(currentIndex == 2 ? 0 : currentIndex + 1);
      (duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }
}
