

import 'package:flutter/material.dart';


class SamsungPrediction extends StatefulWidget {
   SamsungPrediction({Key? key}) : super(key: key);

  @override
  State<SamsungPrediction> createState() => _SamsungPredictionState();
}

class _SamsungPredictionState extends State<SamsungPrediction> {
   String dropdownvalue = 'S22';

 List<String> value = <String>['S22', 'S21', 'Note10', 'S20','S10'];

 List<String> ram = ['4GB','6GB','8GB','12GB'];
   String ramvalue = '4GB';

    List<String> storage = ['16GB','32GB','64GB','128GB','256GB','512GB'];
   String storagevalue = '16GB';

  @override
  Widget build(BuildContext context) {
    getHintStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize:20,
        fontWeight: FontWeight.w400,
        );
  }
     MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
   double screenHeight = _mediaQueryData.size.height;
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
            centerTitle: true,
        title: Text('Samsung',style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
               Navigator.pop(context);
                  },
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
         ),
        backgroundColor: Colors.grey.shade100,
      ),
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _text('Select Condition'),
            SizedBox(height: 6,),
            _customContainerP(
             
                 DropdownButton<String>(
                          value: dropdownvalue,
                          
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
                              dropdownvalue = data!;
                            });
                          },
                          items: value
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                         SizedBox(height: 15,),
                      _text('Select Ram'),
                      _customContainerP(
                           DropdownButton<String>(
                          value: ramvalue,
                          
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
                              ramvalue = data!;
                            });
                          },
                          items: ram
                              .map<DropdownMenuItem<String>>((String ram) {
                            return DropdownMenuItem<String>(
                              value: ram,
                              child: Text(
                                ram,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                      ),

                       SizedBox(height: 15,),
                       _text('Select Storage'),
                       _customContainerP(
                         DropdownButton<String>(
                          value: storagevalue,
                          
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
                              storagevalue = data!;
                            });
                          },
                          items: storage
                              .map<DropdownMenuItem<String>>((String storage) {
                            return DropdownMenuItem<String>(
                              value: storage,
                              child: Text(
                                storage,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                        

                     
          ],
        ),
      ),

          
          
        
      
    ));
  

 
      
    
  }
  Widget _text(String value){
    return Text(value,
    style:  const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),);
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