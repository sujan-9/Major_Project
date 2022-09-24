




import 'package:get/get.dart';

import '../../Models/user_model.dart';
import '../api/api_client.dart';
import 'package:http/http.dart' as http;

class UserRepo extends GetxService {
  final ApiClient apiClient;

  UserRepo({
    required this.apiClient
  });

//   Future<List<UserModel>> getUserList()async{
//     List<UserModel> userList = [];
//     //final response=  await http.get('https://sellphone-api-v1.herokuapp.com/api/userprofile/');
//     // print(response.statusCode);
// if(response.statusCode == 200){


//     for(var list in response.body){
//      try {
//        final model = UserModel.fromJson(list);
//         userList.add(model);
//      } catch (e) {
//       print(e);
       
//      }  
    

//     }
// }
    
//     return userList;
//   }



 
}