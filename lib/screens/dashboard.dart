

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginbar/screens/gridview.dart';
import 'package:flutter/gestures.dart';

import '../Models/search_model.dart';
import '../controllers/productController.dart';
import '../widgets/custom_navbar.dart';
import 'package:http/http.dart' as http;


class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}


class _dashboardState extends State<dashboard> {
   //final ProductController productController = Get.put(ProductController(productRepo: Get.find()));
  
   
   
  @override
  Widget build(BuildContext context) {
     Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }
    return SafeArea(
      child: WillPopScope(
        onWillPop:_requestPop ,
        child: Scaffold(
          appBar: AppBar(
                 leading: Icon(Icons.home,color: Colors.black,),
                 backgroundColor: Colors.white.withOpacity(1),
                 elevation: 0,
                 centerTitle: true,
                 title: Text('Sellphone'.toUpperCase(),
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.black,
                 ),),
                
          ),
          body:   Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(10, 20, 5, 5),
                  //   child: 
                       
                  //     TextField(
                  //        decoration:  InputDecoration(
                        
                  //       hintText: "Search phone",
                  //        labelStyle: TextStyle(
                  //         color: Colors.blueGrey,
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 20,),
                        
                       
                  //       border: OutlineInputBorder(
                                
                  //       borderRadius: BorderRadius.circular(20),
                  //       borderSide: BorderSide(color: Colors.grey, width: 2),
                  //         ),
                      
                  //       floatingLabelBehavior: FloatingLabelBehavior.always,
                  //       prefixIcon: Icon(Icons.search,color: Colors.grey,),
                  //        enabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(25),
                  //     borderSide: BorderSide(color: Colors.grey, width: 1.5),
                  //        ),
                  //         focusedBorder: OutlineInputBorder(
                  //     gapPadding: 0.0,
                  //     borderRadius: BorderRadius.circular(30),
                  //     borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 2),
                  //        ),
                  //         ),
                  //     )
                  //   ),
                    
                    
                    
                    
                    
                    
                    
                    SizedBox(
                      height: 15,
                    ),
                  
                    // Expanded(child:
                      Expanded(child: Stack(
                        children: [
                          CustomGridView(),
                           Align(
                            alignment: Alignment.bottomCenter,
                            child: CustomNavBar())
                        ],
                      ))
                      ,
                       
      
                     
                     
                ],
              ),
            
            ],
          ) ,
         
                          
         
        
              
          
        ),
      ),
    );
  }
}

 

 
