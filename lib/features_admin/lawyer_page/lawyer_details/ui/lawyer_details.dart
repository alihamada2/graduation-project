import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/quickalert.dart';

class LawyerDetailsScreen extends StatefulWidget {
  const LawyerDetailsScreen({super.key});

  @override
  State<LawyerDetailsScreen> createState() => _LawyerDetailsScreenState();
}

class _LawyerDetailsScreenState extends State<LawyerDetailsScreen> {

  
  void showAlert(QuickAlertType quickAlertype, String text,String title) {
    QuickAlert.show(context: context, text: text, type: quickAlertype,title: title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 234, 225),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 234, 225),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/imgs/contract.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'User Name',
                style: TextStyles.font32GrayBold,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                      icon: const Icon(Icons.close,color: Colors.white,),
                      onPressed: () {
                        //TODO  add the logic of the button
                        showAlert(QuickAlertType.error,
                            "The post was rejected successfully",
                            "Rejected"
                            );
                      },
                      label:  Text("Reject",style: TextStyles.font32GrayBold.copyWith(
                        color: Colors.white
                      
                      ),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)
                      ),
                      
                      ),
                  ElevatedButton.icon(
                      icon:  const Icon(Icons.done,color: Colors.white,),
                      onPressed: () {
                        //TODO  add the logic of the button
                        showAlert(QuickAlertType.success,
                            "the post was accepted successfully",
                            "Accepted"
                            );
                      },
                      label:  Text(" Accept",style: TextStyles.font32GrayBold.copyWith(
                        color: Colors.white
                      ),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),)
                ],
              )
            ],
          ),
        ));
  }
}
