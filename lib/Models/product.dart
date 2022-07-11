import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final List<String> images;
  final String thumbnailImage;
  final String  price;
  final bool isFavourite ;

  Product( {
    required this.id,
    required this.images,
   
    required this.thumbnailImage,
    this.isFavourite = false,
    
    required this.name,
    required this.price,
   
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
       "assets/images/iphone5s.png",
     
     
     ],
    thumbnailImage: "assets/images/iphones.png",
   
    name: "Iphone 5s ",
    price: "Rs 20,000",
   
    
    isFavourite: true,
    
  ),
  Product(
    id: 2,
    thumbnailImage: "assets/images/iphone5sc.png",
    images: [
       "assets/images/iphone5sc.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 10,000",
    
    
    
  ),
  Product(
    id: 3,
     thumbnailImage: "assets/images/iphone6s.png",
    images: [
       "assets/images/iphone6s.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 30,000",
   
    isFavourite: true,
   
  ),
  Product(
    id: 4,
       thumbnailImage: "assets/images/iphone8plus.png",
   images: [
       "assets/images/iphone8plus.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 40,000",
   
    isFavourite: true,
  ),
   Product(
    id: 5,
       thumbnailImage: "assets/images/iphone5sc.png",
    images: [
       "assets/images/iphone5sc.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 10,000",
    
    
    
  ),
   Product(
    id: 6,
       thumbnailImage: "assets/images/iphon6s.png",
    images: [
       "assets/images/iphone6s.png",
    ],
   
    name: "Iphone6s",
    price: "Rs 30,000",
   
    isFavourite: true,
   
  ),
   Product(
    id: 7,
       thumbnailImage: "assets/images/iphone5sc.png",
   images: [
       "assets/images/iphone5sc.png",
    ],
   
    name: "Iphon5s",
    price: "Rs 10,000",
   
    isFavourite: true,
  ),
   Product(
    id: 8,
       thumbnailImage: "assets/images/iphone5s.png",
    images: [
      "assets/images/iphonr5s.png",
     
     
    ],
   
    name: "Iphone 5s ",
    price: "Rs 20,000",
   
    
    isFavourite: true,
    
  ),
  Product(
    id: 9,
       thumbnailImage: "assets/images/iphone8plus.png",
    images: [
       "assets/images/iphone8plus.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 10,000",
    
    
    
  ),
  Product(
    id: 10,
       thumbnailImage: "assets/images/iphone6s.png",
    images: [
       "assets/images/iphone6s.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 30,000",
   
    isFavourite: true,
   
  ),
  Product(
    id: 11,
       thumbnailImage: "assets/images/iphone8plus.png",
   images: [
       "assets/images/iphone8plus.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 40,000",
   
    isFavourite: true,
  ),
   Product(
    id: 12,
       thumbnailImage: "assets/images/iphone5sc.png",
    images: [
       "assets/images/iphone5sc.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 10,000",
    
    
    
  ),
   Product(
    id: 13,
       thumbnailImage: "assets/images/iphone6s.png",
    images: [
       "assets/images/iphone6s.png",
    ],
   
    name: "Iphone6s",
    price: "Rs 30,000",
   
    isFavourite: true,
   
  ),
   Product(
    id: 14,
       thumbnailImage: "assets/images/iphone5s.png",
   images: [
       "assets/images/iphone5s.png",
    ],
   
    name: "Iphon5s",
    price: "Rs 10,000",
   
    isFavourite: true,
  ),
   Product(
    id: 15,
       thumbnailImage: "assets/images/iphone6s.png",
    images: [
      "assets/images/iphonr6s.png",
     
     
    ],
   
    name: "Iphone 5s ",
    price: "Rs 20,000",
   
    
    isFavourite: true,
    
  ),
  Product(
    id: 16,
       thumbnailImage: "assets/images/iphone5sc.png",
    images: [
       "assets/images/iphone5sc.png",
    ],
   
    name: "Iphone 10 pro",
    price: "Rs 10,000",
    
    
    
  ),
  
   
];

//const String description ="Likew new with no defects";
