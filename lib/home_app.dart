import 'package:final_project/core/routing/app_router.dart';
import 'package:final_project/core/routing/routes.dart';
import 'package:final_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeApp extends StatelessWidget {
  final AppRouter appRouter;
  const HomeApp({super.key, required this.appRouter});
// we uzed screenutils  to fix the screen sizes and the reponsive (pakage flutter_screenutil: ^5.9.0)
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //This is the size the designer was based on the designer that sent you figma or adobe xd
      designSize: const Size(932.25, 432),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'HomeApp',
        theme: ThemeData(
            primaryColor: ColorsManager.darkBlue,
            scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
