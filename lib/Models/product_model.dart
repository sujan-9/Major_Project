// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

productModel welcomeFromJson(String str) => productModel.fromJson(json.decode(str));

String welcomeToJson(productModel data) => json.encode(data.toJson());

class productModel {
    productModel({
         required this.id,
         required this.user,
         required this.brand,
        required this.model,
        required this.storage,
        required this.color,
        required this.battery,
        required this.screenSize,
        required this.camera,
        required this.description,
        required this.price,
        required this.negotiable,
        required this.image1,
        this.image2,
        this.image3,
        this.image4,
    });

    int id;
    int user;
    String ?brand;
    String model;
    int storage;
    String color;
    String battery;
    String screenSize;
    String camera;
    String description;
    int price;
    bool negotiable;
    String image1;
    String ?image2;
    String ?image3;
    String ?image4;

    factory productModel.fromJson(Map<String, dynamic> json) => productModel(
        id: json["id"],
        user: json["user"],
        brand: json["brand"],
        model: json["model"],
        storage: json["storage"],
        color: json["color"],
        battery: json["battery"],
        screenSize: json["screen_size"],
        camera: json["camera"],
        description: json["description"],
        price: json["price"],
        negotiable: json["negotiable"],
        image1: json["image1"],
        image2: json["image2"],
        image3: json["image3"],
        image4: json["image4"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "brand": brand,
        "model": model,
        "storage": storage,
        "color": color,
        "battery": battery,
        "screen_size": screenSize,
        "camera": camera,
        "description": description,
        "price": price,
        "negotiable": negotiable,
        "image1": image1,
        "image2": image2,
        "image3": image3,
        "image4": image4,
    };
}
