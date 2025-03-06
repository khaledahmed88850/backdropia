
import 'package:backdropia/core/utils/category_list.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/category_card_item.dart';
import 'package:flutter/widgets.dart';

class CategorySliverGridBuilder extends StatelessWidget {
  const CategorySliverGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
        childAspectRatio: 6 / 5,
      ),

      itemCount:  getCategoryList().length,
      itemBuilder: (context, index) {
        return  CategoryCardItem(
          categoryModel: getCategoryList()[index],
        );
      },
    );
  }
}
