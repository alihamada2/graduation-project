import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ui/widgets/home_image.dart';
import 'ui/widgets/home_logo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 234, 225),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                //This is (h) if you say on the iPhone in Android 30 as a percentage
                top: 30.h,
                bottom: 0.h),
            child: Column(
              children: [
                const HomeLogo(),
                SizedBox(
                  height: 30.h,
                ),
                const HomeImage()
              ],
            ),
          ),
        )));
  }
}
