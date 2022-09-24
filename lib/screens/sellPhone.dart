import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loginbar/screens/selectmodel.dart';
import 'package:image_picker/image_picker.dart';

import '../Models/search_model.dart';


String? brandvalue;
String? conditionvalue;
String? model  ;
String? storage;
String? colour;
String? location;
String? ram;
String? price;

bool? negotiable;
String? desc;

Future<String> postPhone(
    String brandvalue,
    String conditionvalue,
    String model,
    String storage,
    String colour,
   
    String price,
   
    String negotiable,
    String desc,
    ) async {
  final http.Response response = await http.post(
    Uri.parse('https://ipflask2.herokuapp.com/predictiphone'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    }, 
     body: jsonEncode(<String, String>{
      "brand": brandvalue,
      "odel": model,
      "storage": storage,
      "Battery": conditionvalue,
      "color": colour,
      
      "price": price,
      
      "negotiable":negotiable,
      "description":desc,
    }),
  );

   if (response.statusCode == 200) {
    String _body = response.body; 
    Map _json = jsonDecode(_body);
    print(response.body);
   // String _id = _json['Price'];
    return response.body;
  } else {
    throw Exception(response.statusCode);
  }
}







class SellPhone extends StatefulWidget {
   SellPhone({Key? key}) : super(key: key);

  @override
  State<SellPhone> createState() => _SellPhoneState();
}

class _SellPhoneState extends State<SellPhone> {
 var model = TextEditingController();
 var storage = TextEditingController();
 var colour = TextEditingController();
 var pricecont = TextEditingController();
 var location = TextEditingController();
 var ram = TextEditingController();
var desc = TextEditingController();




 


 
  bool charger = false;
  bool price = false;
   List<String> condition = ['Like New','Good','Bad'];
  String conditionvalue = 'Like New';

  List<String> brand = ['Samsung','Apple',];
  String brandvalue = 'Samsung';

  getHintStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize:20,
        fontWeight: FontWeight.w400,
        );
  }



//   _makePostRequest() async {
  
//   // set up POST request arguments
//   final url = Uri.parse("https://sellphone-api-v1.herokuapp.com/api/phone/");
//   final headers = {"Content-type": "application/json"};
//   final json = ;

//   // make POST request
//   final response = await http.post(url, headers: headers, body: json);

//   // check the status code for the result
//   final statusCode = response.statusCode;
  
//   // this API passes back the id of the new item added to the body
//   final body = response.body;
//   // {
//   //   "title": "Hello",
//   //   "body": "body text",
//   //   "userId": 1,
//   //   "id": 101
//   // }

// }

  
 


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
           leading: IconButton(
            onPressed: (){
               Navigator.of(context).pop(true);
             },
             icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        ),
      
      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.fromLTRB(13.0,7.0,10.0,0.0),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               _text('Select Brand'),
               SizedBox(height: 10,),
              // _DropMenu(),
              _customContainerP(
                 
                     DropdownButton<String>(
                              value: brandvalue,
                              
                              isExpanded: true,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              underline: SizedBox(),
                              elevation: 0,
                              style: getHintStyle(),
                              // underline: Container(
                              //   height: 2,
                              //   color: Colors.deepPurpleAccent,
                              // ),
                              onChanged: (String ?data) {
                                setState(() {
                                  brandvalue = data!;
                                });
                              },
                              items: brand
                                  .map<DropdownMenuItem<String>>((String brand) {
                                return DropdownMenuItem<String>(
                                  value: brand,
                                  child: Text(
                                    brand,
                                    style: getHintStyle(),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                SizedBox(height: 8,),
                //Text('Conditiom'.toUpperCase()),
               
                SizedBox(height: 5,),
              
              SizedBox(height: 15,),
                _text('Select Condition'),
                SizedBox(height: 6,),
                _customContainerP(
                 
                     DropdownButton<String>(
                              value: conditionvalue,
                              
                              isExpanded: true,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              underline: SizedBox(),
                              elevation: 0,
                              style: getHintStyle(),
                             
                              onChanged: (String ?data) {
                                setState(() {
                                  conditionvalue = data!;
                                });
                              },
                              items: condition
                                  .map<DropdownMenuItem<String>>((String condition) {
                                return DropdownMenuItem<String>(
                                  value: condition,
                                  child: Text(
                                    condition,
                                    style: getHintStyle(),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
              SizedBox(height: 8,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text('Model'),
                      SizedBox(height: 4,),
                     _container(model),
                     SizedBox(height: 12,),
                     _text('Colour'),
                     SizedBox(height: 4,),
                      _container(colour),
                      SizedBox(height: 12,),
                      _text('Location'),
                      SizedBox(height: 4,),
                        _container(location),
                    
                      
      
                    ],
                  ),
                  
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        _text('Storage'),
                          SizedBox(height: 4,),
                      _container(storage),
                       SizedBox(height: 12,),
                       _text('Battery'),
                       SizedBox(height: 4,),
                        _container(ram),
                         SizedBox(height: 12,),
                         _text('Price'),
                          SizedBox(height: 4,),
                           _container(pricecont),
                          
      
                    ],
                  ),
                ],
               ),
               SizedBox(height: 15,),
               Row(
                children: [
                  _checkboxcharger(),
                   SizedBox(width: 5,),
                  _text('Charger Included'),
                  SizedBox(width: 20,),
                   _checkboxprice(),
                   SizedBox(width: 5,),
                   _text('Negotiable')
                ],
               ),
      
               _text('Description'),
               SizedBox(height: 6,),
               Container(
                padding: EdgeInsets.all(8),
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey.shade300,
                ),
                child:  TextField(
                  controller: desc,
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  decoration:  InputDecoration.collapsed(
                  hintText: 'Write description about your phone.'
                  ),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    overflow: TextOverflow.visible,
                  ),

                  
                ),
               ),
               SizedBox(height: 7,),
              
      
           
            SizedBox(height: 15,),
            InkWell(
             onTap: (){
               ScaffoldMessenger.of(context)
                           .showSnackBar(SnackBar(
                            content: Text("Successfully Posted"),
                            duration: new Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.grey.shade700,
                            shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(20))
                                 )));
             },
           

              child: InkWell(
                onTap: (){
                   
                           
                       postPhone(
                        brandvalue, 
                        conditionvalue,
                        model.toString(),
                         storage.toString(),
                          colour.toString(),
                           price.toString(),
                           
                             desc.toString(),
                              negotiable.toString()
                              ) ;  
                           

                            
                        
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey.shade400,
                    
                  ),
                  child: TextButton(
                    onPressed: (){
                       Future.delayed(Duration(seconds: 2)).then((_) {
                            ScaffoldMessenger.of(context)
                           .showSnackBar(SnackBar(
                            content: Text("Posted Successful"),
                            duration: new Duration(seconds: 1),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.grey.shade700,
                            shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(20))
                                 )));
                                 } );
                                  Navigator.of(context).pop(true);

                    },
                    child: Center(child: _text('Sell YOUR PHONE',))),
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
  Widget _container (TextEditingController _controller  ){
   // final TextEditingController controller;
    return Container(
      padding: EdgeInsets.all(5),
      height: 40,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300
      ),
       child:  const Center(
         child: TextField(
                    
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    decoration:  InputDecoration.collapsed(
                    hintText: ''
                    ),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      overflow: TextOverflow.clip,
                    ),),
       ),
    );
  }



  Widget _text(String value){
    return Text(value,
    style:  const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),);
  }
  
  
       Widget _checkboxcharger (){
     
     Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.grey;
    }
    return Checkbox(
       fillColor: MaterialStateProperty.resolveWith(getColor),
       checkColor: Colors.black,
       shape: CircleBorder(),
       value: this.charger,
                          onChanged: (bool? value) {
                            //if (){};
                              setState(() {
                              this.charger = value!;
                            });
                            
                            
                          },
     
      );
  }

  
    Widget _checkboxprice (){
     
     Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.grey;
    }
    return Checkbox(
       fillColor: MaterialStateProperty.resolveWith(getColor),
       checkColor: Colors.black,
       shape: CircleBorder(),
       value: this.price,
                          onChanged: (bool? value) {
                            //if (){};
                              setState(() {
                              this.price = value!;
                            });
                            
                            
                          },
     
      );
  }
  Widget _customContainerP (Widget menu){
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
            height: 50,
           
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
                
            ),
            child: menu,
    );
  
  }
  
  }

  

