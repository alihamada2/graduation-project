import 'package:final_project/core/helpers/extensions.dart';
import 'package:final_project/core/routing/routes.dart';
import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class User {
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
  });
}

class LawyerScreen extends StatefulWidget {
  const LawyerScreen({super.key});

  @override
  State<LawyerScreen> createState() => _LawyerScreenState();
}

class _LawyerScreenState extends State<LawyerScreen> {
  List<User> users = [
    User(name: 'User1', email: 'User1@gmail.com'),
    User(name: 'User2', email: 'User2@gmail.com'),
    User(name: 'User3', email: 'User3@gmail.com'),
    User(name: 'User4', email: 'User4@gmail.com'),
    User(name: 'User5', email: 'User5@gmail.com'),
    User(name: 'User6', email: 'User6@gmail.com'),
    User(name: 'User7', email: 'User7@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 234, 225),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 234, 225),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
  context.pushReplacementNamed(Routes.loginScreen);
                }),
          title: Text(
            "MAZ 'S Lawyer",
            style: TextStyles.font32darkGreenBold.copyWith(fontSize: 65.sp),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              color: ColorsManager.green,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 60.r,
                  backgroundImage: const AssetImage('assets/imgs/profile.png'),
                ),
                title: Text(
                  user.name,
                  style:
                      TextStyles.font35BlackBold.copyWith(color: Colors.white),
                ),
                subtitle: Text(user.email),
                trailing: const Icon(Icons.arrow_forward,color: Colors.white,),
                onTap: () {
                  context.pushNamed(Routes.lawyerDetailsScreen);
                },
              ),
            );
          },
        ));
  }
}
