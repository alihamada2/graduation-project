import 'package:dio/dio.dart';
import 'package:final_project/core/networking/api_services.dart';
import 'package:final_project/core/networking/dio_factory.dart';
import 'package:final_project/features/login/data/repos/login_repo.dart';
import 'package:final_project/features/login/logic/cubit/login_cubit.dart';
import 'package:final_project/features/setting_screen/data/repos/user_repo.dart';
import 'package:final_project/features/setting_screen/logic/cubit/user_cubit.dart';
import 'package:final_project/features/signup/data/repos/signup_repo.dart';
import 'package:final_project/features/signup/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiServices
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //Signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

//  profile
    getIt.registerLazySingleton<UserCubit>(() => UserCubit(getIt()));
   getIt.registerLazySingleton<UserRepo>(() => UserRepo(getIt()));
}
