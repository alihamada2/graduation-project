import 'package:final_project/core/helpers/extensions.dart';
import 'package:final_project/core/routing/routes.dart';
import 'package:final_project/core/theming/font_weight_helper.dart';
import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Near from you",
              style: TextStyles.font35BlackBold
                  .copyWith(fontWeight: FontWeightHelper.regular),
            ),
            SizedBox(
              width: 9.w,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "See more",
                  style:
                      TextStyles.font29GrayRegular.copyWith(fontSize: 35.sp),
                )),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.detailsScreen);

          },
          child: Container(
            width: 430.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.r),
            ),
          ),
        )
      ],
    );
  }
}
