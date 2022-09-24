

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:loginbar/screens/dashboard.dart';
import 'package:loginbar/screens/forget_password.dart';
import 'package:loginbar/screens/signup.dart';

import '../Models/login_body_model.dart';
import '../controllers/auth_controller.dart';
import 'package:http/http.dart' as http;
class loginscreen extends StatefulWidget {
  loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  
 
  void _login(){
    var authController = Get.find<AuthController>();
    
    String email = _emailController.text.trim();
    
    String password = _passController.text.trim();

   
  }



   final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  bool? remember = false;
   bool _isObscure = true;
  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    bool _passwordVisible =false;
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    
    Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }
    return SafeArea(
      child: WillPopScope(
         onWillPop: _requestPop,
        child: Scaffold(
          body: 
          // GetBuilder<AuthController>(builder:(_authController){
          // return !_authController.isLoading? 
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(
             // heightFactor: 50,
              child: Form(
                key: _formKey,
                child: Column(
                children: [
                  Image.asset('assets/images/login.png'),
                  SizedBox(height: 30,),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "Welcome to SellPhone".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black),
                       
          
                    )),
                    SizedBox(height: 5,),
                     RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Login".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      fontSize: 22,
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
                      
                     // controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400),
                      
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
                          onChanged: (value) => _email = value,
                
               
               
              
               
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
              prefixIcon: Icon(Icons.mail,color: Colors.black),
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
                  SizedBox(height: 10,),
                   Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                     // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                     //box shadow
          
                    ),
                    child: TextFormField(
                    //  controller: _passController,
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400),
                      
                 obscureText: !_passwordVisible,
                 onSaved: (newValue) => _password = newValue,
                
               
                 decoration:  InputDecoration(
              labelText: "Password",
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
              prefixIcon: Icon(Icons.lock,color: Colors.black),
              suffixIcon: IconButton(
                icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Colors.black,
               ),
               onPressed: () { 
                 setState(() {
                   _passwordVisible = !_passwordVisible;
               });
                },
                ),
             
              
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
                  validator: (value) {
                    if (value==null) {
                      return 'Enter a valid password!';
                    }
                    else if (value.length<8){
                      return 'Password must be 8 character';
                    }
                    return null;
                  },
                          onChanged: (value) => _password = value,
              ),
                  ),
                  SizedBox(height: 10,),
                 
                  
                     GestureDetector(
                       child: InkWell(
                        onTap: (){
                            Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => ForgetPassword()),
                         );
                        },
                         child: Text(
                           "forget password".toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                          
                           
                               
                         ),
                       ),
                                       
                     ),
                     SizedBox(height: 10,),
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
                            // Navigator.pushNamed(context, '/dashboard');
                            //_login();
                           Future.delayed(Duration(seconds: 2)).then((_) {
                            ScaffoldMessenger.of(context)
                           .showSnackBar(SnackBar(
                            content: Text("Login Successful"),
                            duration: new Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.grey.shade700,
                            shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(20))
                                 )));
                                 } );
                            Navigator.pushNamed(context, '/dashboard');

                            
                            
                             
                        }
                      
                          
                         
                        
                         
                  
                  },
                        
      
      
                       
                       child: Text("Login".toUpperCase(),style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                       ),)),
                     ),
                     SizedBox(height: 12,),
                       RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "Dont have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black),
                     children:  <TextSpan>[
              TextSpan(
             recognizer: TapGestureRecognizer()..onTap = () {
                           Navigator.pushNamed(context, '/signup');
  //                          Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => sign_in_screen()),
  // );
                           },
                  text: " SIGN UP", style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
            ],
                       
          
                    )),
                ],
              )),
            ),
         )
        //  :CircularProgressIndicator();
        //   })
      ),
      ));


  }
}

 
