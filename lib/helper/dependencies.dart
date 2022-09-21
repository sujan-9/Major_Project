import 'package:get/get.dart';
import 'package:loginbar/controllers/auth_controller.dart';
import 'package:loginbar/data/api/api_client.dart';
import 'package:loginbar/data/repository/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constant.dart';





Future<void> init()async{
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);


  

//Get.lazyPut(()=>String());

//api client
 //Get.lazyPut(() => ApiClient(appBaseUrl));
 Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));


 //repos
 //Get.lazyPut(() => ApiClient(appBaseUrl: Get.find()));
 Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

 //controller

 Get.lazyPut(() => AuthController(authRepo: Get.find()));
 //Get.put(AuthController(authRepo: Get.find()));



}

 
