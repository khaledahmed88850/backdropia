import 'package:backdropia/features/home/presentaion/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home_view';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: HomeViewBody());
  }
}
