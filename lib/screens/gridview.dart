

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginbar/Models/product.dart';

import '../controllers/productController.dart';
import 'detail_page.dart';


class CustomGridView extends StatefulWidget {
 
    CustomGridView({Key? key,
    
     }) : super(key: key);

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  final ProductController productController = Get.put(ProductController(productRepo: Get.find()));
@override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body: GetBuilder<ProductController>(builder :( showProducts){

      
      return GridView.builder(
      physics: const BouncingScrollPhysics(),
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  ),
            itemCount: showProducts.productList.length,
            itemBuilder: (BuildContext context, index) {
               return Column(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                          Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) =>  ProductDetail(
                        productModel: showProducts.productList[index],
                       )),
                      );
                      },
                      child: Container(
                       // height: 500,
                        margin: const EdgeInsets.fromLTRB(7, 5, 7, 3),
                        alignment: Alignment.center,
                       
                        decoration: BoxDecoration(
                            // color: const Color(0xFFD9D9D9),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                showProducts.productList[index].image1!,
                              )
                              ),
                            
                            ),
                           /// Showing the image from the assets folder.
                            // child: Image.asset(
                            //  showProducts.ProductList[index].image1,
                            // fit: BoxFit.contain,),
                            
                      ),
                    ),
                  ),
                  //showProducts.ProductList[index].brand
               
                    Text(showProducts.productList[index].model!,style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold

                  
                                  ),),
                                  SizedBox(height: 5,),
                                   Text("Rs" + " " +showProducts.productList[index].price.toString(),style: const TextStyle(
                                    fontSize: 16,
                
                                  ),),
                                  SizedBox(height: 8,)
                ],
              );
            });
   
   })
    );
  }
}