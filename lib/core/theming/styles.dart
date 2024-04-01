import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
//we can use font14Gray500Weight or font14GrayBold

  static TextStyle font32GrayBold = TextStyle(
      fontSize: 35.sp,
      color: ColorsManager.gray,
      fontWeight: FontWeightHelper.bold,
      letterSpacing: 1);

  static TextStyle font32darkGreenBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.darkGreen,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font70BlackBold = TextStyle(
      fontWeight: FontWeightHelper.bold, fontSize: 70.sp, color: Colors.black);

  static TextStyle font35BlackBold = TextStyle(
      fontWeight: FontWeightHelper.bold, fontSize: 35.sp, color: Colors.black);

  static TextStyle font32lightGreenBold = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 35.sp,
    color: ColorsManager.lightGreen,
  );
  static TextStyle font29GrayRegular = TextStyle(
      fontSize: 29.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.gray);
  static TextStyle font30DarkGreenMedium = TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkGreen);
  static TextStyle font32BlueSemiBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.blueAccent);
  static TextStyle font32DarkBlueMedium = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font25DarkGrayRegular = TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeightHelper.regular,
      color: const Color(0xFF8E8888)
      );

  static TextStyle font28lightGrayMedium=TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.lightGray
  );
  
}
