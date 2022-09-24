

import 'package:get/get.dart';
import 'package:loginbar/Models/signup_body_model.dart';
import 'package:loginbar/constants/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../Models/login_body_model.dart';
import '../api/api_client.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
  required this.apiClient,
  required this.sharedPreferences
  });

  Future<http.Response> registration(SignUpBody signUpBody) async{
   
    
    return await apiClient.postData(AppConstants.BASE_URL + AppConstants.REG_URI, signUpBody);
   // print(signUpBody.toString());
  }

  Future<String> getUserToken() async{
    return  sharedPreferences.getString(AppConstants.TOKEN)??'NONE';
  }

  // Future<Response> login(LoginBody loginBody) async{
  //   return await apiClient.postData(AppConstants.LOG_URI, loginBody);
  // }

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