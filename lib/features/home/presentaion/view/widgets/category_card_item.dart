import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: CachedNetworkImageProvider(testImage),
          opacity: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Center(
        child: Text(
          'asdasda',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
