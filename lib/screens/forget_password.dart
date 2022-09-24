

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }

   final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");



    
  @override
  Widget build(BuildContext context) {
     final _formKey = GlobalKey<FormState>();
     Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }
    return WillPopScope(
      onWillPop: _requestPop,
      child:  Scaffold(
         // backgroundColor: ConstantColors.bgColor,
          appBar: AppBar(
           leading: IconButton(
          onPressed: () {
               Navigator.pop(context);
                  },
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
         ),
            elevation: 0,
            backgroundColor: Colors.white,
           
           
          ),
          body: Form(
             key: _formKey,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getCustomText('Reset Password', 
                  Colors.black, 1, TextAlign.start, FontWeight.bold, 25),
                 SizedBox(height: 10,),
                    
                  
                  
                  TextFormField(
                      
                      validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your email address';
                            }
                            // Check if the entered email has the right format
                            if (!emailRegex.hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 21,
                      fontWeight: FontWeight.w400),
                      
                  
                  
                 
                 
                
                 
                   decoration:  InputDecoration(
                  
                hintText: "Enter your email",
               // focusColor: Colors.orange,
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
              
                floatingLabelBehavior: FloatingLabelBehavior.always,
                
                 enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.grey, width: 1.5),
                 ),
                  focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 2),
                 ),
                  ),
                ),
          
          
                  Expanded(
                    child: Stack(
                      children: [
                        InkWell(
                          child: Container(
                              margin: EdgeInsets.only(top: 40),
                              width: 140,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: InkWell(
                                child: Center(
                                  child:
                                  getCustomText('send', Colors.white, 1,
                                   TextAlign.start, FontWeight.w900, 20),
                                ),
                              )),
                          onTap: () {

                            if(_formKey.currentState!.validate()){
                             Get.snackbar(
                              'Rest link has been send to youe email', 
                              '',
                              backgroundColor: Colors.white,
                             // borderColor: Colors.black,
                              borderRadius: 20,
                              duration: Duration(seconds: 2),
                              snackStyle:SnackStyle.FLOATING );
                              
                        
                            // Navigator.pushNamed(context, '/login');
                            
                            
                            
                           
                             
                        }
                        return null;
                //              Get.snackbar(
                //                "Email",
                //                 "Hello everyone",
                //                icon: Icon(Icons.person, color: Colors.white),
                //                snackPosition: SnackPosition.TOP,
                   
                //  );
                //             Navigator.of(context).pop(true);
                          },
                        ),
          
          
                      ],
                    ),
                    flex: 1,
                  ),
                
              ],),
            ),
          )
      
    ));
  }
  Widget getCustomText(String text, Color color, int maxLine, TextAlign textAlign,
    FontWeight fontWeight, double textSizes) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: textSizes,
        color: color,
       // fontFamily: Constants.fontsFamily,
        fontWeight: fontWeight),
    maxLines: maxLine,
    textAlign: textAlign,
  );
}
}