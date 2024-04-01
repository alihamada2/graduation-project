import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 234, 225),
        appBar: AppBar(
          leadingWidth: 250.w,
        leading: Image.asset("assets/imgs/maz.png"),
        backgroundColor:const Color.fromARGB(255, 255, 234, 225), 
        ),
        body:Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 50.0.w),
              child: Text("Favorite",style: TextStyles.font35BlackBold.copyWith(
                fontSize: 60.sp
              ),),
            ),
            
        
          ],
        )
        
        );
  }
}
