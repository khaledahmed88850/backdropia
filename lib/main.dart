import 'package:backdropia/core/services/custom_bloc_observer.dart';
import 'package:backdropia/core/services/service_locator.dart';
import 'package:backdropia/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupGetIt();
   Bloc.observer = CustomBlocObserver();
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
