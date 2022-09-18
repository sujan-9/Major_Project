import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white,
        body: Padding(
          padding:  EdgeInsets.only(top:270,left: 20,right: 20),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  print('hello');
                },
                child: Container(
                  height: 65,
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
                  print('hello');
                },
                child: Container(
                  height: 65,
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
    );
    
  }
}