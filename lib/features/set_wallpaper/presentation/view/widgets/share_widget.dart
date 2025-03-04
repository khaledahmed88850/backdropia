import 'package:backdropia/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShareAndSetWidget extends StatelessWidget {
  const ShareAndSetWidget({
    super.key,
    required this.image,
    required this.title,
    this.onPressed,
  });
  final String image;
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 18.r,
          backgroundColor: Colors.black45,
          child: IconButton(
            icon: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: onPressed,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 50.w,

          height: 20.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: Colors.black45,
          ),
          child: Center(
            child: Text(
              title,
              style: Styles.semiBold13.copyWith(
                color: Colors.white,
                fontSize: 10.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
