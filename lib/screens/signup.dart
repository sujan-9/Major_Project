

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
  var passController1 = TextEditingController();
  var passController2 = TextEditingController();
  var nameController = TextEditingController();

  void _registration(){
    var authController = Get.find<AuthController>();
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String pass1 = passController2.text.trim();
    String pass2 = passController1.text.trim();
    
        

    SignUpBody signUpBody = SignUpBody(
      name: name,
      email: email,
      phone: pass1,
      password: pass2);
          
      
      authController.registration(signUpBody).then((status){
       
         if(status.isSuccess){
           Navigator.pushNamed(context, '/login');
         
         }else{
          print(status.message);
          
         }
      });
    
  }



  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  final RegExp phoneRegex = new RegExp(r'^[6-9]\d{9}$');

  bool _passwordVisible =false;
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
     final _formKey = GlobalKey<FormState>();
     final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
     Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }
    return WillPopScope(
      onWillPop: _requestPop,
      child: Scaffold(
       // backgroundColor: Colors.red,
        body:
        //  GetBuilder<AuthController>(builder:(_authController){
        // return
         SafeArea(
           child: SingleChildScrollView(
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
                      fontSize: 20,
                      color: Colors.black),
                       
                 
                    )),
                    SizedBox(height: 5,),
                     RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Sign up".toUpperCase(),
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
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20,
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
              prefixIcon: Icon(Icons.person,color: Colors.black,),
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
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400),
                      
                
                
               
               
              
               
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
                   Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                     // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                     //box shadow
                 
                    ),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      controller: passController1,
                     // key: _passwordFieldKey,
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
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400),
                      
                
                
               
               
              
               
                 decoration:  InputDecoration(
              labelText: "password",
              labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              hintText: "Enter your password",
              
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
            
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Icon(Icons.lock_clock_rounded,color: Colors.black),
                
              // suffixIcon: IconButton(
              //   icon: Icon(
              // // Based on passwordVisible state choose the icon
              //  _passwordVisible
              //  ? Icons.visibility
              //  : Icons.visibility_off,
              //  color: Colors.black,
              //  ),
              //  onPressed: null,
              // //  onPressed: () { 
              // //    setState(() {
              // //      _passwordVisible = !_passwordVisible;
              // //  });
              // //   },
              //   ),
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
                      obscureText: !_passwordVisible,
                      controller: passController2,
                      key: _passwordFieldKey,
                       validator: (value) {
                    if (value==null) {
                      return 'Enter a valid password!';
                    }
                    else if (value.length<8){
                      return 'Password must be 8 character';
                    }
                    else if (passController1.text!=passController2.text){
                      return 'Password does not match';
                    }
                    return null;
                  },
                     // keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400),
                      
                
                
               
               
              
               
                 decoration:  InputDecoration(
              labelText: "password",
              labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              hintText: "Enter your password",
              
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
            
              floatingLabelBehavior: FloatingLabelBehavior.always,
              prefixIcon: Icon(Icons.lock_clock_rounded,color: Colors.black),
                
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
                       // print("inva;id");
                       if(_formKey.currentState!.validate()){
                          
                          //show custom snackbar success
         
                            // Navigator.pushNamed(context, '/login');
                            Future.delayed(Duration(seconds: 2)).then((_) {
                            ScaffoldMessenger.of(context)
                           .showSnackBar(SnackBar(
                            content: Text("Registration Successful"),
                            duration: new Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.grey.shade700,
                            shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(20))
                                 )));
                                 } );
                            
                            _registration();
                            
                           
                             
                       } 
                        
                          
                         
                        
                         
                  
                  },
             
             
                       
                       child: Text("Sign Up".toUpperCase(),style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                      fontSize: 19,
                      color: Colors.black),
                      
                     children:  <TextSpan>[
                      
              TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {
                         Navigator.pushNamed(context, '/login');
                         // Navigator.of(context).pop(true);
           //                        Navigator.push(
           //   context,
           //   MaterialPageRoute(builder: (context) => loginscreen()),
           // );
                        
                           },
                 
                  text: " Login", style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  ],
                ),
              ),
                  ]
            ),
               ),
                 )
                 ),
         )
        // })
    ),
    );


  }
}