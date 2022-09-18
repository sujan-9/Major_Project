

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
   Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text('My Profile',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),),
        elevation: 0,
        centerTitle: true,
         actions: <Widget>[
          IconButton(
         icon: const Icon(Icons.menu_book_rounded),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),]

      ),
     body: Padding(
       padding: const EdgeInsets.all(15.0),
       child: Row(
       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 50,
               // child: Image(image:
               child: Text('Name'),
                ),
              
              TextButton(onPressed: null,
               child: Text('Edit Profile'),)
            ],
          ),
          SizedBox(width: 50,),
          Column(
            children: [
              Text('name '),
              SizedBox(height: 20,),
              Text('phone num'),
               SizedBox(height: 20,),
              Text('location'),
               SizedBox(height: 20,),
              
            ],
          )
        ],
       ),
     ),
    );
    
  }
}