import 'package:flutter/material.dart';

import '../Models/product.dart';

class DetailText extends StatefulWidget {
 
   DetailText({Key? key}) : super(key: key);

  @override
  State<DetailText> createState() => _DetailTextState();
}

class _DetailTextState extends State<DetailText> {
 

  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text(
    // demoProducts[index].name,
    'xyz pro max',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  ),
 SizedBox(height: 5,),
 const Text("Rs. 11223344.00",style: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.black
  ),
  ),
  SizedBox(height: 5,),
  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas diam nam eu nulla .",style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w200,
    color: Colors.black
  ),
  overflow: TextOverflow.ellipsis,
  ),
  SizedBox(height: 8,),
   Container(
    padding: EdgeInsets.only(top: 10,),
   // height: 120,
     //color: Colors.yellow,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _button('Memory', () { }),
                SizedBox(width: 50,),
                 _button('Camera', () { }),
                 
              ],
              

            ),
            SizedBox(height: 6,),
            Row(
            
              children: [
                 _button('Color', () { }),
                  SizedBox(width: 50,),
                   _button('Screen', () { }),
                 
              ],
            )
          ],
        ),
        SizedBox(width: 10,),
          Text("See More",
               style:  TextStyle(
                fontSize: 15,
               ),)
      ],
    ),

   ),
],
);
}

Widget _button (String specs, VoidCallback ontap){
    return  InkWell(
      onTap: ontap,
      child: Container(
        height: 30,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: Center(child: Text(specs,style: TextStyle(color: Colors.white),)),
      ),
    );
}
}