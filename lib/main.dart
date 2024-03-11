import 'package:flutter/material.dart';
import 'buttombar.dart';
import 'myappbar.dart';
import 'myhomepage.dart';
import 'screenutil.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil.screenHeight(context);
    final screenWidth = ScreenUtil.screenWidth(context);
    return MaterialApp(
        home: Scaffold(
            //extendBodyBehindAppBar: true,
            appBar: MyAppBar(),
            body: MyHomePage(),
            bottomNavigationBar: MyButtomBar()));
  }
}
