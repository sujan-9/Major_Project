import 'package:flutter/material.dart';
import 'package:loginbar/screens/selectmodel.dart';


class SellPhone extends StatefulWidget {
   SellPhone({Key? key}) : super(key: key);

  @override
  State<SellPhone> createState() => _SellPhoneState();
}

class _SellPhoneState extends State<SellPhone> {
  bool showvalue = false;
  bool charger = false;
  bool price = false;
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.fromLTRB(13.0,7.0,10.0,0.0),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               _text('Brand'),
               SizedBox(height: 10,),
              // _DropMenu(),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                 color: Colors.grey.shade300,
                 borderRadius: BorderRadius.circular(5)
      
                ),
                child: Center(child: Text('Select brand')),),
                SizedBox(height: 8,),
                //Text('Conditiom'.toUpperCase()),
                _text('Condition'),
                SizedBox(height: 5,),
              
               Row(
                children: [
                  _checkbox(),
                  
                  _text('Like new'),
                   
                   _checkbox(),
                  
                  _text('Like new'),
                  _checkbox(),
                  
                  _text('Like new'),
                  
      
      
                ],
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _text('Model'),
                      SizedBox(height: 4,),
                     _container(),
                     SizedBox(height: 12,),
                     _text('Colour'),
                     SizedBox(height: 4,),
                      _container(),
                      SizedBox(height: 12,),
                      _text('Location'),
                      SizedBox(height: 4,),
                        _container(),
                    
                      
      
                    ],
                  ),
                  
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        _text('Storage'),
                          SizedBox(height: 4,),
                      _container(),
                       SizedBox(height: 12,),
                       _text('Ram'),
                       SizedBox(height: 4,),
                        _container(),
                         SizedBox(height: 12,),
                         _text('Price'),
                          SizedBox(height: 4,),
                           _container(),
                          
      
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
                child: const TextField(
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
              
      
            InkWell(
              onTap: (() => print('success')),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width: 8,),
                    _text('Upload Images')
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap:(() =>  print('hello')),
           

              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey.shade400,
                  
                ),
                child: Center(child: _text('Sell YOUR PHONE')),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
  Widget _container (){
    return Container(
      padding: EdgeInsets.all(5),
      height: 40,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300
      ),
       child:  Center(
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
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),);
  }
  
  Widget _checkbox (){
     Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.grey;
    }
    return Checkbox(
       fillColor: MaterialStateProperty.resolveWith(getColor),
       checkColor: Colors.black,
       shape: CircleBorder(),
       value: this.showvalue,
                          onChanged: (bool? value) {
                            //if (){};
                              setState(() {
                              this.showvalue = value!;
                            });
                            
                            
                          },
     
      );}
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
  
  }

