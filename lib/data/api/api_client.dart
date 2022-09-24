import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:loginbar/Models/signup_body_model.dart';

import '../../constants/constant.dart';
import 'package:http/http.dart'as http;


class ApiClient extends GetConnect implements GetxService{
  late String token;
   
  
  late Map<String, String> _mainHeaders;

  ApiClient(){
    
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;

    _mainHeaders = {
     'content-type':'application/json;charset = UTF-8',
     'Authorization':'Bearer $token'
    };

  }

  void updateHeader(String token){
     _mainHeaders = {
     'content-type':'application/json;charset = UTF-8',
     'Authorization':'Bearer $token'
    };
  }

  Future<Response> getData (String uri)async{
    late http.Response response;
    try{
      Response response =await get(uri);
      return response;
    }
    catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }

  




  Future<http.Response> postData (String uri, SignUpBody data)async{
   late http.Response response;
  
    try{
      response= await http.post(Uri.parse("https://sellphone-api-v1.herokuapp.com/auth/registration/"),body:data.toJson());
      print(response.body);
     return response;
     
   
     
    
    
     
     
    } 
    catch(e){
      print(e.toString());
      return response;
    }
  }






}