import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginbar/Models/product_model.dart';
import 'package:loginbar/widgets/custom_container.dart';


import '../controllers/productController.dart';
import '../widgets/detail_help.dart';

class ProductDetail extends StatefulWidget {
  final ProductModel productModel;
   ProductDetail({Key? key, required this.productModel}) : super(key: key);

  @override
  State<ProductDetail> createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetail> {
  final ProductController productController = Get.put(ProductController(productRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         shadowColor: Colors.transparent,
         elevation: 0,
        leading: InkWell(
          onTap:(){Navigator.pop(context);
          } ,
          child: Icon( Icons.arrow_back_ios,color: Colors.black,)),
        backgroundColor: Colors.white,
        actions: const  [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.share)),
        ],
      ),
      body: GetBuilder<ProductController>(builder :( showProducts){
        return SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              height: 360,
              width: double.infinity,
              //margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
          color: Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(9),
               image: DecorationImage(image: NetworkImage(widget.productModel.image1!))
          
              ),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _imagecontainer(widget.productModel.image1!),
            _imagecontainer(widget.productModel.image2!),
            _imagecontainer(widget.productModel.image3!),
          ],
              ),
        
        
            ), Text(
      
      widget.productModel.model!,
      style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      ),
      ),
     SizedBox(height: 5,),
      Text("RS ${widget.productModel.price!}",
      style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: Colors.black
      ),
      ),
      SizedBox(height: 15,),
              
                detailText(
                  productModel: widget.productModel,
                ),
              SizedBox(height: 20,),
              // _contactinfo(),
              // const SizedBox(height: 10,),
              Text(
        
       'About Phone',
        style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.black
        ),
        ),
              
               SizedBox(height: 5,),
          Container(
            height: 60,
            width: 400,
            padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
          
          widget.productModel.description!,
          style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.black
          ),
          ),
        ),
      ),
     // SizedBox(height: 15,),

              // Container(
              //   width: double.infinity,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     color:const Color(0xff8C9199),
              //   ),
              //   child: const Center(
              //     child: Text("Contact Seller",
              //     style: TextStyle(fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white),),
              //   ),
              // ),
        
            ],
          ),
              ),
        );
      })
    );
  }

   Widget _imagecontainer (String url){
    return Container(
      height: 70,
      width: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        image: DecorationImage(image: NetworkImage(url))
        //image: 
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