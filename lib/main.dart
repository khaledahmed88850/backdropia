import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/urls_entity.dart';
import 'package:backdropia/core/entities/wallpaper_entity.dart';
import 'package:backdropia/core/services/custom_bloc_observer.dart';
import 'package:backdropia/core/services/service_locator.dart';
import 'package:backdropia/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  setupGetIt();
  Bloc.observer = CustomBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(UrlsEntityAdapter());
  Hive.registerAdapter(WallpaperEntityAdapter());
  await Hive.openBox<WallpaperEntity>(kFavoritesBox);

  runApp(const BackDropia());
}

class BackDropia extends StatelessWidget {
  const BackDropia({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomBottomNavigationBar(),
      ),
    );
  }
}
