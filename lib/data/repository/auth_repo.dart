

import 'package:get/get.dart';
import 'package:loginbar/Models/signup_body_model.dart';
import 'package:loginbar/constants/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Models/login_body_model.dart';
import '../api/api_client.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
  required this.apiClient,
  required this.sharedPreferences
  });

  Future<Response> registration(SignUpBody signUpBody) async{
    print(signUpBody);
    
    return await apiClient.postData(AppConstants.REG_URI, signUpBody.toJson());
   // print(signUpBody.toString());
  }

  Future<String> getUserToken() async{
    return  sharedPreferences.getString(AppConstants.TOKEN)??'NONE';
  }

  Future<Response> login(LoginBody loginBody) async{
    return await apiClient.postData(AppConstants.LOG_URI, loginBody.toJson());
  }

  Future<bool> saveUserToken(String token)async{
    apiClient.token =token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);

  }

  Future<void> saveUserNumberandPassword(String number, String password)async{
    try{
      await sharedPreferences.setString(AppConstants.NUMBER, number);
      await sharedPreferences.setString(AppConstants.PASSWORD, password);
    }catch(e){
      rethrow;
    }
  }




}