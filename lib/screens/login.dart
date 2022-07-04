import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");


  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                    fontSize: 25,
                    color: Colors.black),
                     
        
                  )),
                  SizedBox(height: 5,),
                   RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Login".toUpperCase(),
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
                    style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w400),
                    
              obscureText: true,
              //onSaved: (newValue) => password = newValue,
              
             
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
            prefixIcon: Icon(Icons.lock),
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
               
                
                   GestureDetector(
                     child: Text(
                       "forget password".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Colors.black),
                      
                       
                           
                    ),
                  // onTap: to do
                                     
                   ),
                   SizedBox(height: 10,),
                   Container(
                   // margin: EdgeInsets.fromLTRB(10,10,5,5),
                    padding: EdgeInsets.fromLTRB(20,5,20,5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),



                    //validation
                     /* onPressed:  
                      () {
   if (_formKey.currentState.validate()) {
   ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        content: Text(
          'Validation Successful',
           style: TextStyle(
              color: Colors.black,
           ),
        ),
      ),
   );
  }
}, */
                    child: TextButton(
                      onPressed: (){
                         Navigator.pushNamed(context, '/dashboard');
                      },


                     
                     child: Text("Login".toUpperCase(),style: TextStyle(
                      fontWeight: FontWeight.bold,
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
                    fontSize: 16,
                    color: Colors.black),
                   children:  <TextSpan>[
            TextSpan(
           recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pushNamed(context, '/signup');
                         },
                text: " SIGN UP", style: TextStyle(fontSize: 18,color: Colors.blueAccent)),
          ],
                     
        
                  )),
              ],
            )),
          ),
        ),
      ),
      
    );
  }
}