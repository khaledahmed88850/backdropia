import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/features/category/data/models/category_model.dart';
import 'package:backdropia/features/wallpaper_category_presentation.dart/presentation/views/wallpaper_category_presentation_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder:
                (context, animation, secondaryAnimation) =>
                    WallpaperCategoryPresentationView(tag: categoryModel.name),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      },
      child: Container(
        width: 80.w,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(offset: Offset(0, 0), blurRadius: 2, color: Colors.black),
          ],
          image: DecorationImage(
            fit: BoxFit.fill,
            image: CachedNetworkImageProvider(categoryModel.imageUrl),
            opacity: 0.8,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            categoryModel.name,
            style: Styles.bold16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
