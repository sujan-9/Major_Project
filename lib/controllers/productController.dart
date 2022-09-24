import 'package:get/get.dart';


//import '../Models/product_model.dart';
import '../Models/product_model.dart';
import '../data/repository/product_repo.dart';


class ProductController extends GetxController {
  
  final ProductRepo productRepo;

  List<ProductModel> _list = [];
  List<ProductModel> get productList => _list;


  ProductController({
    required this.productRepo
  });
     

  

 Future<void> getProductList()async{
  
  try{

  final dataList = await productRepo.getProductList() ;
  _list = dataList;
  
  }
  catch(e){
    print(e);
  }
     


 }
  

}