import 'dart:convert';

import 'package:get/get.dart';




import '../Models/user_model.dart';

import '../data/repository/userRepo.dart';
import 'package:http/http.dart'as http;

class UserController extends GetxController {
  
  final UserRepo userRepo;

  // List<UserModel> _list = [];
  // List<UserModel> get userList => _list;


  UserController({
    required this.userRepo
  });
     

  

 Future<UserModel> fetchPost() async {
  final url = Uri.parse('https://sellphone-api-v1.herokuapp.com/api/userprofile/');
  final response = await http.get(url);
  print(response.statusCode);
  

  if (response.statusCode == 200) {
    print(response.body);
    return UserModel.fromJson(jsonDecode(response.body));
    
  } else {
    throw Exception('Failed to load post: ');
  }
}
  

}