import 'package:get/get.dart';
import 'package:loginbar/data/repository/search_repo.dart';

import '../Models/search_model.dart';

class SearchController extends GetxController {

  final SearchRepo searchRepo;

  List<SearchModel> _list = [];
  List<SearchModel> get searchList => _list;



   SearchController({
    required this.searchRepo
  });

     


   Future<void> getSearchList()async{
  
  try{

  }
  catch(e){
    print(e);
  }
     


 }



}