import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 234, 225),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 234, 225),
      ),
      body: Column(
        children: [
          
          Padding(
            padding:  EdgeInsets.only(left: 18.0.h,right: 18.h),
            child: TextFormField(
            onChanged: (value){
                //filter by price and location and and 
                
            },
            controller: searchTextController,
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 9.h),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.green, width: 1.3.w),
                        borderRadius: BorderRadius.circular(45.r)
                      ),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.gray, width: 1.3.w),
                      borderRadius: BorderRadius.circular(35.r)
                ),
              hintText: "Search...",
              helperStyle: TextStyles.font25DarkGrayRegular,
              suffixIcon: searchTextController.text.isEmpty ? IconButton(onPressed: (){
                searchTextController.clear();
              }, icon: const Icon(Icons.cancel,size: 21,color: ColorsManager.gray,)) : null
            ),
                          ),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 15.0.h,top: 10.h,right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Filter By",style: TextStyles.font35BlackBold,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.r),
                    color: ColorsManager.green.withOpacity(0.5)
                  ),
                  child: IconButton(onPressed: (){}, icon:const Icon(IconlyBold.filter,size: 20,))) 
            
              ],
            ),
          )
        ],
      ),
    );
  }
}
