import 'package:flutter/material.dart';
import 'reusableprofile.dart';
import 'screenutil.dart';
import 'colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.screenHeight(context);
    final screenWidth = ScreenUtil.screenWidth(context);
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomRight:
                  Radius.circular(30), // Radius for bottom-right corner
            ),
          ),

          // we can set width here with conditions
          width: screenWidth * .92,
          height: screenHeight * .35,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.arrow_back, color: Colors.white, size: 19),
                CustomProfile(
                  image: 'assets/w1.jpeg',
                  width: screenWidth * .16,
                  height: screenHeight * .08,
                  borderwidth: 1,
                  padding: const EdgeInsets.all(2),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Work Friends',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      '12 Members',
                      style: TextStyle(color: Colors.grey[700], fontSize: 11),
                    )
                  ],
                ),
                Icon(
                  Icons.call,
                  color: BgColor,
                  size: 18,
                ),
                Icon(
                  Icons.videocam_rounded,
                  color: BgColor,
                  size: 18,
                ),
                Icon(
                  Icons.more_vert,
                  color: BgColor,
                  size: 18,
                )
              ]),
        ),
      ),
    );
  }

  ///width doesnt matter
  @override
  Size get preferredSize => Size(300, kToolbarHeight);
}
