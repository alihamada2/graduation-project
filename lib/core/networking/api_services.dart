import 'package:dio/dio.dart';
import 'package:final_project/core/networking/api_constants.dart';
import 'package:final_project/features/edit_profile/data/models/update_request_body.dart';
import 'package:final_project/features/edit_profile/data/models/update_response.dart';
import 'package:final_project/features/login/data/models/login_request_body.dart';
import 'package:final_project/features/login/data/models/login_response.dart';
import 'package:final_project/features/setting_screen/data/models/user_response.dart';
import 'package:final_project/features/signup/data/models/signup_request_body.dart';
import 'package:final_project/features/signup/data/models/signup_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    
    @Body() LoginRequestBody loginRequestBody,
  );
  
  @POST(ApiConstants.signup)
  Future<SignupResponse>  signup(
   @Body()  SignupRequestBody signupRequestBody,
  );
  
  @GET(ApiConstants.userInfo)
  Future<UserInfoResponse> getUser(    
    @Header("Authorization") String token,
  );

  @PATCH(ApiConstants.updateUser)
  Future<UpdateResponse> updateUser(
    @Header("Authorization") String token,
    @Body() UpdateRequestBody upadateRequestBody ,
  );
}
