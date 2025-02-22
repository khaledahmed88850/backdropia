import 'package:backdropia/core/utils/assets.dart';
import 'package:backdropia/features/home/presentaion/view/widgets/search_text_field.dart'
    show SearchTextField;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 40.h, width: 300.w, child: SearchTextField()),
        Spacer(),
        SizedBox(
          width: 30.w,
          child: SvgPicture.asset(Assets.assetsSvgsNotification),
        ),
      ],
    );
  }
}
