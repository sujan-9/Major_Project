import 'package:flutter/material.dart';

import '../data/repository/ipnone_repo.dart';
import '../data/repository/samsung_repo.dart';

class SelectModel extends StatefulWidget {
   SelectModel({Key? key}) : super(key: key);

  @override
  State<SelectModel> createState() => _SelectModelState();
}

class _SelectModelState extends State<SelectModel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        
       
        elevation: 0,
        leading: IconButton(
          onPressed: () {
               Navigator.pop(context);
                  },
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
         ),
        backgroundColor: Colors.grey.shade100,
      ),
        body: Padding(
          padding:  EdgeInsets.only(top:270,left: 20,right: 20),
          child: Center(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  samsungPrediction()),
  );
                  },
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                     color: Colors.grey.shade400,
                     borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text('Samsung',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                    ),
                    ),
                ),
                  SizedBox(height: 25,),
               InkWell(
                  onTap: () {
                    Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  iphonePrediction()),
                  );
                  },
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                     color: Colors.grey.shade400,
                     borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text('Iphone',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                    ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}