import 'package:final_project/features/add_post_screen/ui/widgets/add_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor:  const Color.fromARGB(255, 255, 234, 225),

      body: Column(
        children: [
          SizedBox(height: 50.h,),
       AddImageFromCameraAndStorage(
        
       )
        ],
      )
    );
  }
}