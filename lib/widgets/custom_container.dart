

import 'package:flutter/material.dart';

class custom_detailcard extends StatelessWidget {
   custom_detailcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
      height: 360,
      width: double.infinity,
      //margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(9),
        // image: Image.asset("assets/images/iphone8plus.png",
        // fit: BoxFit.cover,),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _imagecontainer(),
          _imagecontainer(),
          _imagecontainer(),
        ],
      ),


    );
  }
  /// _imagecontainer() is a function that returns a Container widget with a height of 70, a width of
  /// 115, a border radius of 8, a white background color, and an image.
  /// 
  /// Returns:
  ///   A Container widget.
  Widget _imagecontainer (){
    return Container(
      height: 70,
      width: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        //image: 
      ),
      
    );
  }
}
