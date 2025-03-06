import 'package:backdropia/features/category/presentation/view/widgets/category_view_body.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.controller});
final PersistentTabController controller;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:  CategoryViewBody(controller: controller,));
  }
}
