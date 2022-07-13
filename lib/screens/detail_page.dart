import 'package:flutter/material.dart';
import 'package:loginbar/widgets/custom_container.dart';
import 'package:loginbar/widgets/detailpage_text.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         shadowColor: Colors.transparent,
        leading: InkWell(
          onTap:(){Navigator.pop(context);
          } ,
          child: Icon( Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        actions: const  [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.share)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            custom_detailcard(),
         const   SizedBox(height: 5,),
              DetailText(),
        const    SizedBox(height: 15,),
            _contactinfo(),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:const Color(0xff8C9199),
              ),
              child: const Center(
                child: Text("Contact Seller",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
              ),
            )

          ],
        ),
      ),
    );
  }
  Widget _contactinfo (){
    return Container(
      height: 50,
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.handshake),
             // SizedBox(width: 5,),
              Text("Contact Seller"),
              SizedBox(width: 20,),
              Icon(Icons.price_change),
              Text("Price Negotiable")
            ],
          ),
          Row(
            children: [
              SizedBox(width: 18,),
               Icon(Icons.location_disabled),
              SizedBox(width: 24,),
              Text("Location"),
            ],
          ),
        ],
      ),
    );
  }
}