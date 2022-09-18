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
        body: Padding(
          padding:  EdgeInsets.only(top:100),
          child: Column(
            children: [
              Container(
                height: 59,
                color: Colors.red,),
                SizedBox(height: 25,),
              Container(
                height: 60,
                color: Colors.green,),
            ],
          ),
        ),
      ),
    );
    
  }
}