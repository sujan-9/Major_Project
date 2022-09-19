import 'package:flutter/material.dart';
import 'package:loginbar/screens/Samsung-prediction.dart';
import 'package:loginbar/screens/detail_page.dart';
import 'package:loginbar/screens/favpage.dart';
import 'package:loginbar/screens/forget_password.dart';
import 'package:loginbar/screens/gridview.dart';
import 'package:loginbar/screens/dashboard.dart';
import 'package:loginbar/screens/iphone-prediction.dart';
import 'package:loginbar/screens/login.dart';

import 'package:loginbar/screens/profile.dart';
import 'package:loginbar/screens/selectmodel.dart';
import 'package:loginbar/screens/sellPhone.dart';
import 'package:loginbar/screens/signup.dart';
import 'package:loginbar/screens/splashscreen.dart';
import 'package:loginbar/widgets/dropdown.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
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
    home: SelectModel(),
   // home: dropdown(),
    //   initialRoute: '/',
    //   routes:{
    //     '/': (context) =>splashscreen  (),
    //     '/login': (context) => loginscreen (),
    //     '/signup': (context) =>  sign_in_screen(),
    //     '/dashboard':(context) => dashboard(),
    //    '/ProductDetail' :(context) =>  ProductDetail(),
    //    '/forgetpassword' :(context) => ForgetPassword(),
    //   '/favpage' :(context) => FavPage(),
    //  
    //  '/selectmodel' :(context) => SelectModel(),
    //  '/iphonePrediction' :(context) => IphonePrediction(),
    //   '/samsungPrediction' :(context) => SamsungPrediction(),
      
      
    //   } ,
    );
  }
}

