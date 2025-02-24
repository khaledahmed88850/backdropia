import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/features/category/presentation/view/category_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Categories', style: Styles.semiBold16),

        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'See All',
            style: Styles.semiBold14.copyWith(color: Colors.blueAccent),
          ),
        ),
      ],
    );
  }
}
