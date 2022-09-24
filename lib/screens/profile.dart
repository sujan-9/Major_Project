

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loginbar/Models/user_model.dart';

import '../controllers/userController.dart';
import '../data/repository/userRepo.dart';

class Profile extends StatefulWidget {
  
   Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 // final UserController userController = Get.put(UserController(userRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
         icon:  Icon(Icons.arrow_back_ios_new,color: Colors.grey.shade800,),
            
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        title: Text('My Profile',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),),
        elevation: 0,
        centerTitle: true,
         actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
         icon:  Icon(Icons.logout_outlined,color: Colors.grey.shade800,),
             
              onPressed: () {
                
              },
            ),
          ),]

      ),
     body:
      //  GetBuilder<UserController>(builder :( showUser){
     
      //  return 
     Padding(
       padding: const EdgeInsets.fromLTRB(10.0,5,10,5),
       child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 80,
              child: Text('image'),
              // Image(image:NetworkImage(
              //                   showUser.userList[0].profilePic!)
                              
            
              // ),
          ),
          ),
          SizedBox(height: 50,),
          
          _text('Account Information'),
          SizedBox(width: 50,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            
            decoration: BoxDecoration(
              //color: Colors.grey.white,
              borderRadius: BorderRadius.circular(15),
              

            ),
           
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person,size: 15,),
                  SizedBox(width: 20,),
                  Text('Sumit Shrestha',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
             SizedBox(height: 20,),
          
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            
            decoration: BoxDecoration(
              //color: Colors.grey.white,
              borderRadius: BorderRadius.circular(15),
              

            ),
           
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_android_rounded,size: 15,),
                  SizedBox(width: 20,),
                  Text('9815119500',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            
            decoration: BoxDecoration(
              //color: Colors.grey.white,
              borderRadius: BorderRadius.circular(15),
              

            ),
           
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_city_rounded,size: 15,),
                  SizedBox(width: 20,),
                  Text('Pokhara-15',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            Container(
              child: TextButton(
                onPressed: (){

                },
               child: Icon(Icons.logout_rounded,size: 15,),
            ),
           
            ),
        ],
       ),
     )

    // })
    );
    
  }
   Widget _textfield(){
    final TextEditingController controller = TextEditingController();

    
      return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade600,
        ),
        child: TextField(
          controller: controller,
          readOnly: true,
          decoration: InputDecoration(
            hintText: controller.text,
          ),
          

         
        ),
      );
     }

     Widget _text(String val){
      return  Text(val,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal
          ),
          );
     }
}