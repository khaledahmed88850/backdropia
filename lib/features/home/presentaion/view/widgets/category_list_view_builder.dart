import 'package:backdropia/core/utils/category_list.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/category_card_item.dart';
import 'package:flutter/material.dart';

class CategoryListViewBuilder extends StatelessWidget {
  const CategoryListViewBuilder({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection:  Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return 
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: CategoryCardItem( categoryModel: getCategoryList()[index],),
        );
      },
    );
  }
}
