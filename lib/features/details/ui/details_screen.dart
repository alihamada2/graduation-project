import 'package:final_project/core/helpers/extensions.dart';
import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/core/theming/font_weight_helper.dart';
import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 234, 225),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 234, 225),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.bookmark_add_outlined)),
        ],
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.only(bottom: 10.h),
              width: double.infinity,
              child: Image.asset("assets/imgs/details.png"),
            ),
            Expanded(
              child: Stack(
                          children: [
              Container(
                padding: EdgeInsets.only(top: 20.h, left: 65.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.r),
                    topRight: Radius.circular(70.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        PageView.builder(
                          itemBuilder: ((context, index) {
                            return CircleAvatar(
                              radius: 50.r,
                              backgroundImage: const AssetImage(
                                "assets/imgs/profile.png",
                              ),
                            );
                          }),
                          itemCount: 3,
                          controller: PageController(initialPage: 3),
                          onPageChanged: (index) {
                            setState(() {
                              index = 3;
                            });
                          },
                        ),
                        Row(
                          
                          children: [
                            Container(
                              height: 8.h,
                              width: 8.w,
                              margin:  EdgeInsets.symmetric(horizontal: 8.h),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                // color: currentPage==3 ??ColorsManager.lightBrown:ColorsManager.lightGrey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Garry Allen",
                                style: TextStyles.font35BlackBold.copyWith(
                                    fontWeight: FontWeightHelper.medium),
                              ),
                              SizedBox(
                                height: .2.h,
                              ),
                              Text("Owner", style: TextStyles.font29GrayRegular)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 220.w,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                width: 110.w,
                                decoration: BoxDecoration(
                                    color: ColorsManager.lighterBlue,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                        )))),
                            SizedBox(
                              width: 25.w,
                            ),
                            Container(
                                width: 110.w,
                                decoration: BoxDecoration(
                                    color: ColorsManager.lighterBlue,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.message,
                                          color: Colors.white,
                                        )))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Description",
                      style:
                          TextStyles.font35BlackBold.copyWith(fontSize: 40.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More",
                      style: TextStyles.font29GrayRegular
                          .copyWith(fontSize: 35.sp),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 6.h),
                  width: 150.w,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lightGrey,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                ),
              ),
                          ],
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
