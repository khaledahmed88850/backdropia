import 'package:backdropia/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TrendingRecentNewItem extends StatelessWidget {
  const TrendingRecentNewItem({
    super.key,
    required this.image,
    required this.title,
    required this.isSelected,
    this.onTap,
  });
  final String image, title;
  final void Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 75.w,
        height: 45.h,
        decoration:
            isSelected
                ? ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.00, -0.04),
                    end: Alignment(-1, 0.04),
                    colors: [Color(0xFF00FFEF), Color(0xFF6747E7)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                )
                : null,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 15.w,
                height: 20.h,
                child: SvgPicture.asset(
                  image,
                  colorFilter:
                      isSelected
                          ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                          : ColorFilter.mode(
                            Color(0xFF6747E7),
                            BlendMode.srcIn,
                          ),
                ),
              ),
              GradientText(
                title,
                colors:
                    isSelected
                        ? [Colors.white, Colors.white]
                        : const [Color(0xFF6747E7), Color(0xFF02ADA2)],
                style: Styles.semiBold13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
