import 'package:final_project/core/networking/api_services.dart';
import 'package:final_project/features/edit_profile/data/models/update_request_body.dart';
import 'package:final_project/features/edit_profile/data/models/update_response.dart';

class UpdateRepo {
  final ApiServices apiServices;
  UpdateRepo(
    this.apiServices,
  );
//function to update user info and send token in header
  Future<UpdateResponse> updateUser(String token, UpdateRequestBody updateRequestBody  ) async {
    try {
      final response = await apiServices.updateUser(
          "Bearer $token",
          updateRequestBody );
      return response;
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }
}
