import 'package:backdropia/core/services/service_locator.dart';
import 'package:backdropia/features/home/domain/repo/home_repo.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_photos_cubit/get_photos_cubit.dart';
import 'package:backdropia/features/home/presentaion/cubits/get_random_photos_cubit/get_random_photos_cubit.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home_view';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetPhotosCubit(getIt<HomeRepo>())),
        BlocProvider(
          create: (context) => GetRandomPhotosCubit(getIt<HomeRepo>()),
        ),
      ],
      child: const HomeViewBody(),
    );
  }
}
