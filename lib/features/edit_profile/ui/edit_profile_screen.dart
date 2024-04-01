import 'package:final_project/core/helpers/extensions.dart';
import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
    bool isObscureText = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

          backgroundColor: const Color.fromARGB(255, 255, 234, 225),       
           appBar: AppBar(
            
          backgroundColor: const Color.fromARGB(255, 255, 234, 225),
           title: Text("Edit Profile", style: TextStyles.font35BlackBold.copyWith(
            fontSize: 50.sp
           ),),
           centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          
          child: Container(
            padding: EdgeInsets.all(8.h),
            child: Column(
              children: [
                Stack(
                  children: [
                      SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage("assets/imgs/profile.png"))),
                        
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100), color: ColorsManager.darkBrown),
                      child: const Icon(Icons.camera_alt_outlined, color: Colors.black, size: 20),
                    ),
                  ),
                  ],
                ),
                SizedBox(height: 20.h),
                  Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Full Name"), prefixIcon: Icon(Icons.person_2)),
                    ),
                     SizedBox(height:  5.h),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Email"), prefixIcon: Icon(Icons.email_outlined)),
                    ),
                     SizedBox(height:  5.h),
                    TextFormField(
                      keyboardType: TextInputType.phone,
              
                      decoration: const InputDecoration(
                          label: Text("PhoneNo"), 
                          
                          prefixIcon: Icon(Icons.phone),
                          
                          ),
                    ),
                     SizedBox(height:  5.h),
                    TextFormField(
                      obscureText: isObscureText,
                      decoration: InputDecoration(
                        label: const Text("Password"),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon:
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(
                                isObscureText ? Icons.visibility_off : Icons.visibility,
                              
                              ),
                            )
                      ),
                    ),
                     SizedBox(height: 25.h),
                            SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                      
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsManager.linear,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child:  Text("Edit Profile", style: TextStyles.font35BlackBold.copyWith(
                          fontSize: 32.sp,
                          
                        ),)
                      ),
                    ),
                  
              ],
            ),
          ),
          ]
        ),
          ),
        ),
        );
  }
}
