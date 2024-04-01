import 'package:final_project/core/networking/api_services.dart';
import 'package:final_project/features/setting_screen/data/models/user_response.dart';

class UserRepo {
  final ApiServices apiServices;

  UserRepo(
    this.apiServices,
  );

  //method get and send token in header
  Future<UserInfoResponse> getUser(String token) async {
    try {
      final response = await apiServices.getUser("Bearer $token");
      return response;
    } catch (error) {
      print(error.toString());
      throw error;
    }

}
}
