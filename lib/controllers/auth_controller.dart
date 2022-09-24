import 'package:get/get.dart';
import 'package:loginbar/Models/response_model.dart';
import 'package:loginbar/Models/signup_body_model.dart';
import 'package:http/http.dart' as http;
import '../Models/login_body_model.dart';
import '../data/repository/auth_repo.dart';

class AuthController extends GetxController implements GetxService{
final AuthRepo authRepo;

AuthController({
  required this.authRepo
});

bool _isLoading = false;
bool get isLoading => _isLoading;

Future<ResponseModel> registration (SignUpBody signUpBody)async{
  // print("object");
  _isLoading = true;
  http.Response response = await authRepo.registration(signUpBody); 
  late ResponseModel responseModel;
  print(response.body);
  if(response.statusCode == 200){
    // authRepo.saveUserToken(response.body["token"]);
    responseModel = ResponseModel(true, response.body);
    
  }
  else{
    // responseModel = ResponseModel(false, response.statusText!);
    print(response.statusCode.toString());
  }
  

  

  _isLoading = false;
  update();
  return responseModel;


}  

// Future<ResponseModel> login (LoginBody loginBody)async{
//   _isLoading = true;
//   Response response = await authRepo.login(loginBody); 
//   late ResponseModel responseModel;
//   if(response.statusCode == 200){
//     authRepo.saveUserToken(response.body["token"]);
//     responseModel = ResponseModel(true, response.body["token"]);
//   }
//   else{
//     responseModel = ResponseModel(false, response.statusText!);
//     print(response.statusCode.toString()); 
//   }
//   _isLoading = false;
//   update();
//   return responseModel;


// }  

void saveUserNumberandPassword(String number, String password)async{
  authRepo.saveUserNumberandPassword(number, password);


 }
   
}