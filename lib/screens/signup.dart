

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginbar/controllers/auth_controller.dart';
import 'package:loginbar/screens/login.dart';

import '../Models/signup_body_model.dart';
class sign_in_screen extends StatefulWidget {
  sign_in_screen({Key? key}) : super(key: key);

  @override
  State<sign_in_screen> createState() => _sign_in_screenState();
}

class _sign_in_screenState extends State<sign_in_screen> {

  var emailController = TextEditingController();
  var passController = TextEditingController();
  var phoneController = TextEditingController();
  var nameController = TextEditingController();

  void _registration(){
    var authController = Get.find<AuthController>();
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String phone = phoneController.text.trim();
    String password = passController.text.trim();
    // print(name);
    // print(email);
    // print(phone);
    // print(password);
        

    SignUpBody signUpBody = SignUpBody(
      name: name,
      email: email,
      phone: phone,
      password: password);
          
      
      authController.registration(signUpBody).then((status){
         if(status.isSuccess){
           Navigator.pushNamed(context, '/login');
          print('sucess reg');
         }else{
          print(status.message);
          //print('faules');
         // print(signUpBody);
         }
      });
     // print(signUpBody.toString());
  }



  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  final RegExp phoneRegex = new RegExp(r'^[6-9]\d{9}$');
  @override
  Widget build(BuildContext context) {
     final _formKey = GlobalKey<FormState>();
     final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
     Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }
    return SafeArea(
      child: WillPopScope(
        onWillPop: _requestPop,
        child: Scaffold(
          body:
          //  GetBuilder<AuthController>(builder:(_authController){
          // return
           SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
            child: Center(
              child: Form(
                key: _formKey,
                //
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Image.asset('assets/images/login.png'),
                     SizedBox(height: 10,),
                     RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "Welcome to SellPhone".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black),
                       
          
                    )),
                    SizedBox(height: 5,),
                     RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Sign up".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black),
                       
          
                    )),
                    SizedBox(height: 15,),
                     Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                     // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                     //box shadow
          
                    ),
                    child: TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w400),
                      
                       obscureText: false,
                
               
               
              
               
                 decoration:  InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              hintText: "Enter your full name",
             // focusColor: Colors.orange,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
            
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Icon(Icons.person),
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
                validator: (value){
                   if (value == null || value.trim().isEmpty) {
                              return 'Please enter your name';
                            }
                              else if (value.length<8){
                             return 'Password must be 8 character';}
                            return null ;
                },
              ),
                  ),
                   Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                     // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                     //box shadow
          
                    ),
                    child: TextFormField(
                      controller: emailController,
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
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w400),
                      
                obscureText: false,
                
               
               
              
               
                 decoration:  InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              hintText: "Enter your email",
             // focusColor: Colors.orange,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
            
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Icon(Icons.mail),
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
                  ),
                   Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                     // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                     //box shadow
          
                    ),
                    child: TextFormField(
                      controller: phoneController,
                      
                      
                       validator: (value){
                       if (value == null || value.trim().isEmpty) {
                              return 'Please enter your phone number';
                            }
                            else  if (!phoneRegex.hasMatch(value)) {
                          return 'Please enter valid phone number';
                        }
                            return null ;
                },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w400),
                      
                obscureText: false,
                
               
               
              
               
                 decoration:  InputDecoration(
                 
              labelText: "Phone",
              labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              hintText: "Enter your phone number",
             // focusColor: Colors.orange,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
            
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Icon(Icons.phone),
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
                  ), Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                     // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                     //box shadow
          
                    ),
                    child: TextFormField(
                      controller: passController,
                      key: _passwordFieldKey,
                       validator: (value) {
                    if (value==null) {
                      return 'Enter a valid password!';
                    }
                    else if (value.length<8){
                      return 'Password must be 8 character';
                    }
                    return null;
                  },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w400),
                      
                obscureText: true,
                
               
               
              
               
                 decoration:  InputDecoration(
              labelText: "password",
              labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              hintText: "Enter your password",
             // focusColor: Colors.orange,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
            
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Icon(Icons.mail),
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
                  ),
                  
                   Container(
                     // margin: EdgeInsets.fromLTRB(10,10,5,5),
                      padding: EdgeInsets.fromLTRB(20,5,20,5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                   child: TextButton(
                       onPressed: (){
                        if(_formKey.currentState!.validate()){
                          //show custom snackbar success

                            // Navigator.pushNamed(context, '/login');
                            
                            _registration();
                            // {
                            //   print(SignUpBody);
                            // };
                           
                             
                        }
                        return null;
                          
                         
                        
                         
                  
                  },
      
      
                       
                       child: Text("Sign Up".toUpperCase(),style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                       ),)),
                     ),
                     SizedBox(height: 12,),
                       RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "Already  have an account?",
                      style: TextStyle(
                        //fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black),
                      
                     children:  <TextSpan>[
                      
              TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {
                         Navigator.pushNamed(context, '/login');
                         // Navigator.of(context).pop(true);
                        
                           },
                 
                  text: " Login", style: TextStyle(fontSize: 18,color: Colors.blueAccent)),
                  ],
                ),
              ),
                  ]
            ),
        ),
          )
          )
          // })
      ),
      ));


  }
}