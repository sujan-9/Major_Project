import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loginbar/screens/copy.dart';
class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}


class _dashboardState extends State<dashboard> {
  
   
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
               leading: Icon(Icons.home),
               backgroundColor: Colors.grey.withOpacity(1),
               elevation: 0,
               centerTitle: true,
               title: Text('Sellphone'.toUpperCase(),
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Colors.black,
               ),),
              
        ),
        body:   Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 5, 5),
              child: TextField(
                 decoration:  InputDecoration(
                
                hintText: "Search phone",
                 labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,),
                
               
                border: OutlineInputBorder(
        
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
              
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Icon(Icons.search,color: Colors.grey,),
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
              ),),
              SizedBox(
                height: 15,
              ),
            
               Expanded(child: SizedBox(height: 300,
               child: copy(),))
          ],
        ) ,
       
                        
    
        bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: 'Home',  
            backgroundColor: Colors.grey 
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            label: 'Search',  
            backgroundColor: Colors.yellow  
          ), 
           
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
           label: 'Profile',  
            backgroundColor: Colors.grey,  
          ),
           BottomNavigationBarItem(  
            icon: Icon(Icons.plus_one),  
           label: 'Add',  
            backgroundColor: Colors.grey,  
          ),    
        ],  
        type: BottomNavigationBarType.shifting,  
         
        selectedItemColor: Colors.black,  
        iconSize: 40,  
          
        elevation: 5  
      ),  
            
        
      ),
    );
  }
}

 

 
