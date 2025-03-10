import 'package:backdropia/core/helpers/indexed_stack_provider.dart';
import 'package:backdropia/core/widgets/custom_app_bar.dart';
import 'package:backdropia/features/category/presentation/view/widgets/category_sliver_grid_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});
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
                Provider.of<IndexStackProvider>(
                  context,
                  listen: false,
                ).setIndex(0);
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const CategorySliverGridBuilder(),
        ],
      ),
    );
  }
}
