import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Models/product_model.dart';

class detailText extends StatefulWidget {
  final ProductModel productModel;
   detailText({Key? key, required this.productModel}) : super(key: key);

  @override
  State<detailText> createState() => _detailTextState();
}

class _detailTextState extends State<detailText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Storage",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
              _button(widget.productModel.storage!.toString(), () { }),
              SizedBox(height: 10,),
                Text("Color",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
               _button(widget.productModel.color!.toString(), () { }),
               SizedBox(height: 10,),
               Text("Screen Size",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
               _button(widget.productModel.screenSize!.toString(), () { }),


            ],
            
          ),
          SizedBox(width: 80,),
          Column(
            children: [
              Text("Camere MP",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
              _button(widget.productModel.camera!.toString(), () { }),
              SizedBox(height: 10,),
                Text("Battery Capacity",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
               _button(widget.productModel.battery!.toString(), () { }),
               SizedBox(height: 10,),
               Text("Battery Capacity",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),),
               _button(widget.productModel.battery!.toString(), () { }),


            ],
            
          ),
          

        ],

    )
    ;
  }
  Widget _button (String specs, VoidCallback ontap){
    return  InkWell(
      onTap: ontap,
      child: Container(
        height: 30,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.shade600,
        ),
        child: Center(child: Text(specs,style: TextStyle(color: Colors.white),)),
      ),
    );
}
}