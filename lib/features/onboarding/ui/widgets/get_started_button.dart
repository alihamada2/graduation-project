import 'package:final_project/core/helpers/extensions.dart';
import 'package:final_project/core/routing/routes.dart';
import 'package:final_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/theming/font_weight_helper.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      // ignore: sort_child_properties_last
      child: const Text(
        "Let’s Go",
        style: TextStyle(
            fontSize: 25, color: Colors.white,
             fontWeight: FontWeightHelper.regular),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.darkBlue),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 4, horizontal: 60)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}