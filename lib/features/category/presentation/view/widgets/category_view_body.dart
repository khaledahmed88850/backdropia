import 'package:backdropia/core/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentaion/view/widgets/category_card_item.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: buildAppBar(context: context, title: 'Category'),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          CategorySliverGridBuilder(),
        ],
      ),
    );
  }
}

class CategorySliverGridBuilder extends StatelessWidget {
  const CategorySliverGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
        childAspectRatio: 6 / 5,
      ),

      itemCount: 27,
      itemBuilder: (context, index) {
        return const CategoryCardItem();
      },
    );
  }
}
