import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';

import 'package:loginbar/screens/profile.dart';
import 'package:loginbar/screens/selectmodel.dart';
import 'package:loginbar/screens/sellPhone.dart';

import '../screens/detail_page.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return 
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
             height: 60,
               
               decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(23),
               ),
               child: Expanded(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  InkWell(
                   
                    child: Icon(Icons.home)),
                    InkWell(
                     onTap:  (){
                      Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => SellPhone()),
                         );
                     },


                    child: Icon(Icons.add)),
                    InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/favpage');
                       Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => SelectModel()),
                         );
                    },
                    child: Icon(Icons.monetization_on_sharp)),
                    InkWell(
                      onTap:(){ Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => Profile()),
                         );},
                    child: Icon(Icons.person)),
                  ],
                 ),
               ),
              
            ),
        );
  }
  
}