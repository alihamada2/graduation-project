
import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElvatedButtonSetting extends StatelessWidget {


  final String text;
  final Function() onPressed;
  final Color colorButton;
  final double fontSize;
  final FontWeight fontWeight;



  const ElvatedButtonSetting(
      {required this.fontSize,
        required this.fontWeight,
        required this.text, required this.onPressed,
      required this.colorButton, super.key});
       

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 8.h, horizontal: 327.w),
          ),
          backgroundColor:
              MaterialStateProperty.all(colorButton),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.h)),
          ),
        ),
        child: Text(
          text,
          style: TextStyles.font25DarkGrayRegular.copyWith(
            color: Colors.black,
            fontSize: fontSize.sp,
            fontWeight: fontWeight
          ),
        ));
  }
}
