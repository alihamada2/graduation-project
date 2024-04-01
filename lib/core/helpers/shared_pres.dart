import 'package:shared_preferences/shared_preferences.dart';

class SharedPres {
static  Future saveRole(String role) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("role", role);
  }

  static Future saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
  }


}
