import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginbar/Models/product_model.dart';
import 'package:loginbar/controllers/userController.dart';
import 'package:loginbar/data/api/api_client.dart';
import 'package:loginbar/data/repository/auth_repo.dart';
import 'package:loginbar/helper/dependencies.dart';
import 'package:loginbar/screens/SearchBar.dart';

import 'package:loginbar/screens/detail_page.dart';

import 'package:loginbar/screens/forget_password.dart';
import 'package:loginbar/screens/gridview.dart';
import 'package:loginbar/screens/dashboard.dart';

import 'package:loginbar/screens/login.dart';

import 'package:loginbar/screens/profile.dart';
import 'package:loginbar/screens/selectmodel.dart';
import 'package:loginbar/screens/sellPhone.dart';
import 'package:loginbar/screens/signup.dart';
import 'package:loginbar/screens/splashscreen.dart';

import 'package:loginbar/controllers/auth_controller.dart';

import 'controllers/Search_Controller.dart';
import 'controllers/productController.dart';


void main()async {
   WidgetsFlutterBinding.ensureInitialized();
    await init();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      Get.find<ProductController>().getProductList();
      Get.find<SearchController>().getSearchList();
    //  Get.find<UserController>().getUserList();
    //  Get.find<ApiClient>();
    
    return GetMaterialApp(
     
      debugShowCheckedModeBanner: false,
     // initialBinding: StoreBinding(),
      // color: Colors.white,
      theme: ThemeData(
        primaryColor: Colors.white,
       //primarySwatch: Colors.blue
        // primarySwatch: Colors.grey,
        ),
      //  home: SamsungPrediction(),
    //  home: SellPhone(),
   // home: Profile(),
   // home: PredictionPrice(),
   // home: loginscreen(),
   // home: dashboard(),
     initialRoute: '/',
       routes:{
          '/': (context) =>splashscreen  (),
         '/login': (context) => loginscreen (),
         '/signup': (context) =>  sign_in_screen(),
         '/dashboard':(context) => dashboard(),
    //    //'/ProductDetail' :(context) =>  ProductDetail(),
    //    '/forgetpassword' :(context) => ForgetPassword(),
    //  // '/favpage' :(context) => FavPage(),
     
    //  '/selectmodel' :(context) => SelectModel(),
    //  //'/iphonePrediction' :(context) => IphonePrediction(),
    //   //'/samsungPrediction' :(context) => SamsungPrediction(),
    //    '/profile' :(context) => Profile(),
      
      
       } ,
    );
  }
}

