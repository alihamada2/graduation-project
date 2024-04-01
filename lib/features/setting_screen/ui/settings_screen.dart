import 'package:final_project/features/setting_screen/ui/widgets/all_buttons.dart';
import 'package:final_project/features/setting_screen/ui/widgets/profile_and_name.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 234, 225),
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileAndName(),
              AllButtons(),
            ],
          )),
    );
  }
}
