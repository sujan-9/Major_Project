import 'package:get/get.dart';
import 'package:loginbar/controllers/auth_controller.dart';
import 'package:loginbar/data/api/api_client.dart';
import 'package:loginbar/data/repository/auth_repo.dart';
import 'package:loginbar/data/repository/product_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constant.dart';
import '../controllers/Search_Controller.dart';
import '../controllers/productController.dart';
import '../controllers/userController.dart';
import '../data/repository/search_repo.dart';
import '../data/repository/userRepo.dart';





Future<void> init()async{
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);


  

//Get.lazyPut(()=>String());

//api client
 //Get.lazyPut(() => ApiClient(appBaseUrl));
 Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
 Get.lazyPut(() => ProductRepo(apiClient: Get.find()));
 Get.lazyPut(() => SearchRepo(apiClient: Get.find()));
 Get.lazyPut(() => UserRepo(apiClient: Get.find()));



 //repos
 //Get.lazyPut(() => ApiClient(appBaseUrl: Get.find()));
 Get.lazyPut(()=>ApiClient());

 //controller

 Get.lazyPut(() => AuthController(authRepo: Get.find()));
 Get.lazyPut(() => ProductController(productRepo: Get.find()));
 Get.lazyPut(() => UserController(userRepo: Get.find()));
 Get.lazyPut(() => SearchController(searchRepo: Get.find()));
 //Get.put(AuthController(authRepo: Get.find()));



}

 
