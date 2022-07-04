

import 'package:flutter/material.dart';

class copy extends StatefulWidget {
  copy({Key? key}) : super(key: key);

  @override
  State<copy> createState() => _copyState();
}

class _copyState extends State<copy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  GridView.builder(
               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  ),
            itemCount: 16,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
               // height: 500,
                margin: EdgeInsets.fromLTRB(7, 5, 7, 3),
                alignment: Alignment.center,
               
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15)),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Image.asset("assets/image/login.png",fit: BoxFit.fill,),
                       Text("phone image",style: TextStyle(
                          fontSize: 20,

                        ),), 
                        Text("phone name",style: TextStyle(
                          fontSize: 20,

                        ),),
                         Text("phone price",style: TextStyle(
                          fontSize: 20,
                          
                        ),)
                      ],
                    ),
              );
            }),
    );
  }
}