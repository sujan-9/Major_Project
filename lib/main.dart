import 'package:flutter/material.dart';
import 'package:loginbar/screens/copy.dart';
import 'package:loginbar/screens/dashboard.dart';
import 'package:loginbar/screens/login.dart';
import 'package:loginbar/screens/signup.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.grey,
      ),
     // home: customTextField(),
     home: dashboard(),
    //  initialRoute: '/',
     // routes:{
     //   '/': (context) =>homepage  (),
      //  '/signup': (context) =>  name(),
      //  '/dashboard':(context) => dashboard(),
     // } ,
    );
  }
}

