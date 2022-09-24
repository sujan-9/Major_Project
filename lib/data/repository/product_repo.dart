import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:loginbar/Models/product_model.dart';
import 'package:loginbar/data/api/api_client.dart';


class ProductRepo extends GetxService {
  final ApiClient apiClient;

  ProductRepo({
    required this.apiClient
  });

  Future<List<ProductModel>> getProductList()async{
    List<ProductModel> productList = [];
    final response=  await apiClient.getData("https://sellphone-api-v1.herokuapp.com/api/phone/");
    
if(response.statusCode == 200){


    for(var list in response.body){
     try {
       final model = ProductModel.fromJson(list);
        productList.add(model);
     } catch (e) {
      print(e);
       
     }  
    

    }
}
    
    return productList;
  }



 
}