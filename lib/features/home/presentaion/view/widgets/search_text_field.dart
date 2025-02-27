import 'package:backdropia/core/utils/app_styles.dart';
import 'package:backdropia/features/wallpaper_category_presentation.dart/presentation/views/wallpaper_category_presentation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WallpaperCategoryPresentationView(tag: value);
            },
          ),
        );
      },
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search),
        suffixIconColor: Color(0xFF979797),
        filled: true,
        fillColor: Color(0xffF0F0F0),

        hintText: 'find wallpaper..',
        hintStyle: Styles.semiBold13.copyWith(color: Color(0xFF979797)),
        border: buildBorder(),
        focusedBorder: buildBorder().copyWith(
          borderSide: BorderSide(color: Color(0x0F413C3B), width: 1.w),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(25.r),
    );
  }
}
