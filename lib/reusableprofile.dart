import 'package:flutter/material.dart';
import 'colors.dart';
import 'screenutil.dart';

class CustomProfile extends StatelessWidget {
  final double width, height;
  final String image;
  final EdgeInsetsGeometry? padding;
  final double borderwidth;

  const CustomProfile(
      {super.key,
      required this.image,
      required this.width,
      required this.height,
      this.padding,
      required this.borderwidth});

  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.screenHeight(context);
    final screenWidth = ScreenUtil.screenWidth(context);
    return Container(
      //color: Colors.red,
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: backgroundColor.withOpacity(0.6), // Border color with opacity
          width: borderwidth,
          // Border width
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: padding ?? EdgeInsets.zero,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
