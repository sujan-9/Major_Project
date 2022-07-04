import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                ), Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                   // color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                   //box shadow
        
                  ),
                  child: TextFormField(
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
                      onPressed: null,


                     
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
                        Navigator.pushNamed(context, '/');
                         },
               
                text: " SIGN UP", style: TextStyle(fontSize: 18,color: Colors.blueAccent)),
                ],
              ),
            ),
                ]
          ),
      ),
    ))));
  }
}