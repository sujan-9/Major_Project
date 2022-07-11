

import 'package:flutter/material.dart';
import 'package:loginbar/Models/product.dart';


class CustomGridView extends StatefulWidget {
  final String? name, image, price;
    CustomGridView({Key? key, this.name, this.image, this.price}) : super(key: key);

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {

  
  // List<Map<String, String>> data = [
  //   {
      
     
     
  //     "name": "iphone5s",
  //     "image": "assets/images/iphone5s.png",
  //     "price": "Rs 20,000",
  //   },
  //   {
  //      "name": "iphone5sc",
  //      "price": "Rs 10,000",
  //     "image": "assets/images/iphone5sc.png"
  //   },
  //   {
  //     "name": "iphone6s",
  //     "price": "Rs 25,000",
  //     "image": "assets/images/iphone6s.png"
  //   },
  //   {
  //     "name": "iphone8plus",
  //     "price": "Rs 35,000",
  //     "image": "assets/images/iphone8plus.png"
  //   },
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  GridView.builder(
      physics: const BouncingScrollPhysics(),
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  ),
            itemCount: demoProducts.length,
            itemBuilder: (BuildContext context, index) {


              return Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                       
                        InkWell(
                          onTap: () {
                             Navigator.pushNamed(context, '/ProductDetail');
                          },
                          child: Container(
                           // height: 500,
                            margin: const EdgeInsets.fromLTRB(7, 5, 7, 3),
                            alignment: Alignment.center,
                           
                            decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(15)),
                                child: Image.asset(
                                 demoProducts[index].thumbnailImage,
                                fit: BoxFit.contain,),
                          ),
                        ),
                         Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 8.0),
                            child: InkWell(
                              onTap: (){
                                print("Sujan Bhattarai");
                              },
                              child: Container(
                                    padding: const EdgeInsets.all(5.0),
                                  decoration:const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                  child:  Icon(Icons.favorite_outline_sharp)),
                            ),
                          ),
                          ),
                      ],
                    ),
                  ),
               
                 Text(demoProducts[index].name,style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold

                  
                                  ),),
                                  SizedBox(height: 5,),
                                   Text(demoProducts[index].price,style: TextStyle(
                                    fontSize: 14,
                  
                                  ),),
                                  SizedBox(height: 8,)
                ],
              );
            }),
    );
  }
}