import 'package:backdropia/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DownloadAndSetWidget extends StatelessWidget {
  const DownloadAndSetWidget({
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
    return  Column(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor:  const Color(0x73000000),
          child:  IconButton(
            icon: SvgPicture.asset(
              image,
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: onPressed,
          ),
        ),
       const SizedBox(height: 8),
        Container(
          width: 53.w,

          height: 20.h,
          decoration:  ShapeDecoration(
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: const Color(0x73000000),
          ),
          child:  Center(
            child: Text(
              title,
              style: Styles.semiBold13.copyWith(
                color: const Color(0xFFFFFFFF),
                fontSize: 10.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
