import 'package:backdropia/core/widgets/custom_app_bar.dart';
import 'package:backdropia/features/category/presentation/view/widgets/category_sliver_grid_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key, required this.controller});
  final PersistentTabController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: buildAppBar(
              context: context,
              title: 'Category',
              onPressed: () {
                controller.index = 0;
              },
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          CategorySliverGridBuilder(),
        ],
      ),
    );
  }
}
