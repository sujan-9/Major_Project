import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';
import 'package:loginbar/screens/favpage.dart';

import '../screens/detail_page.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return 
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
               height: 60,
                 
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(23),
                 ),
                 child: Expanded(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    InkWell(
                     
                      child: Icon(Icons.home)),
                      InkWell(
                      child: Icon(Icons.add)),
                      InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, '/favpage');
                         Navigator.push(
                              context,
                            MaterialPageRoute(builder: (context) => FavPage()),
                           );
                      },
                      child: Icon(Icons.favorite_rounded)),
                      InkWell(
                      child: Icon(Icons.person)),
                    ],
                   ),
                 ),
                
              ),
          ),
        );
  }
  
}