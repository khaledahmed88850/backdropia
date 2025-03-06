import 'package:backdropia/core/theme_provider/theme_provider.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 40.h, width: 300.w, child: SearchTextField()),
       const Spacer(),
        GestureDetector(
          onTap: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
          child: SizedBox(
            width: 30.w,
            child: Icon(Icons.brightness_6_outlined),
          ),
        ),
      ],
    );
  }
}
