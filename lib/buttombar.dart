import 'package:flutter/material.dart';
import 'screenutil.dart';

import 'colors.dart';

class MyButtomBar extends StatelessWidget {
  const MyButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.screenHeight(context);
    final screenWidth = ScreenUtil.screenWidth(context);
    return Container(
      margin: const EdgeInsets.only(left: 28, right: 28, bottom: 20, top: 10),
      width: screenWidth,
      height: screenHeight * .077,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
        ),
        color: Colors.grey.shade200,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.all(3),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: BgColor,
              ),
              child: Icon(
                Icons.send,
                size: 20,
                color: Colors.white,
              ),
              // Replace with your avatar image
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 65.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.mic, color: Colors.grey.shade500),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.photo_album, color: Colors.grey.shade500),
                  ],
                ),
                border: InputBorder.none,
                hintText: 'Type here....',
                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
