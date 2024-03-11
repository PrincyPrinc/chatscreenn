import 'package:flutter/material.dart';
import 'package:task28/reusableprofile.dart';
import 'screenutil.dart';

import 'colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.screenHeight(context);
    final screenWidth = ScreenUtil.screenWidth(context);
    return SingleChildScrollView(
      //scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/w2.jpeg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Monica Sebastian',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                margin: const EdgeInsets.symmetric(vertical: 9),
                //alignment: Alignment.topLeft,
                width: screenWidth * .5,
                height: screenHeight * .09,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight:
                          Radius.circular(20) // Radius for bottom-right corner
                      ),
                ),
                child: const Text(
                  'Yeah, Right! As it that success happened ',
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                //margin: const EdgeInsets.symmetric(vertical: 10),
                width: screenWidth * .48,
                height: screenHeight * .07,
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight:
                          Radius.circular(20) // Radius for bottom-right corner
                      ),
                ),
                child: const Text(
                  //textAlign: TextAlign.right,
                  'Anywho gooto raill Alright ',
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.grey.shade300,
                )),
                const SizedBox(width: 14),
                Text(
                  'TODAY',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
                ),
                const SizedBox(width: 14),
                Expanded(
                    child: Divider(
                  color: Colors.grey.shade300,
                )),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Align(
              alignment: Alignment.topRight,
              child: CustomProfile(
                image: 'assets/w2.jpeg',
                width: screenWidth * .48,
                height: screenHeight * .24,
                //padding: const EdgeInsets.all(5),
                borderwidth: 5.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/w2.jpeg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Cathorine Henry',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                width: screenWidth * .630,
                height: screenHeight * .07,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight:
                          Radius.circular(20) // Radius for bottom-right corner
                      ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_arrow,
                      size: 40,
                      color: BgColor,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 3.0),
                        activeTrackColor: BgColor,
                        inactiveTrackColor: Colors.white,
                        thumbColor: BgColor,
                      ),
                      child: Container(
                        width: 200,
                        child: Slider(
                            value: _sliderValue,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (newValue) {
                              setState(() {
                                _sliderValue = newValue;
                              });
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'James Typing...',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
