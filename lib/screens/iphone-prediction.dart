

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';


class IphonePrediction extends StatefulWidget {
   IphonePrediction({Key? key}) : super(key: key);

  @override
  State<IphonePrediction> createState() => _IphonePredictionState();
}

class _IphonePredictionState extends State<IphonePrediction> {

  List<String> condition = ['Like New','Goode','Bad'];
  String conditionvalue = 'Like New';

   List<String> batteryhealth = ['100%','Above 90%','Between 80%-90%','Below 80%',];
   String batteryhealthvalue = '100%';

    List<String> storage = ['16GB','32GB','64GB','128GB','256GB','512GB'];
   String storagevalue = '16GB';

   List<String> phone = ['Iphone6','Iphone7','Iphone8','IphoneX','Iphone11','Iphone12'];
   String phonevalue = 'Iphone6';

   List<String> model = ['Normal','Mini','Plus','PRO','ProMax',];
   String modelvalue = 'Normal';

   List<String> screenIssue = ['NO','YES'];
   String screenIssuevalue = 'NO';

   List<String> phoneProblem = ['NO','YES'];
   String phoneProblemvalue = 'NO';




  getHintStyle() {
    return TextStyle(
        color: Colors.black,
        fontSize:20,
        fontWeight: FontWeight.w400,
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Iphone',style: TextStyle(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    _text('Select Phone'),
                    SizedBox(height: 6,),
                Container(
                  height: 40,
                  width: 150,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
                
            ),
                  child: DropdownButton<String>(
                          value: phonevalue,
                          
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
                              phonevalue = data!;
                            });
                          },
                          items: phone
                              .map<DropdownMenuItem<String>>((String phone) {
                            return DropdownMenuItem<String>(
                              value: phone,
                              child: Text(
                                phone,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                ),
                  ],
                ),
                  Column(
                  children: [
                    _text('Select Model'),
                Container(
                  height: 40,
                  width: 150,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
                
            ),
                  child: DropdownButton<String>(
                          value: modelvalue,
                          
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
                              modelvalue = data!;
                            });
                          },
                          items: model
                              .map<DropdownMenuItem<String>>((String model) {
                            return DropdownMenuItem<String>(
                              value: model,
                              child: Text(
                                model,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                ),
                  ],
                ),
               
              ],
            ),
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
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.deepPurpleAccent,
                          // ),
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
                         SizedBox(height: 15,),
                      _text('Select Battery Health'),
                      SizedBox(height: 6,),
                      _customContainerP(
                           DropdownButton<String>(
                          value: batteryhealthvalue,
                          
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
                              batteryhealthvalue = data!;
                            });
                          },
                          items: batteryhealth
                              .map<DropdownMenuItem<String>>((String batteryhealth) {
                            return DropdownMenuItem<String>(
                              value: batteryhealth,
                              child: Text(
                                batteryhealth,
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

                      SizedBox(height: 15,),
                       _text('Any Screen Issue?'),
                       _customContainerP(
                         DropdownButton<String>(
                          value: screenIssuevalue,
                          
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
                              screenIssuevalue = data!;
                            });
                          },
                          items: screenIssue
                              .map<DropdownMenuItem<String>>((String screenIssue) {
                            return DropdownMenuItem<String>(
                              value: screenIssue,
                              child: Text(
                                screenIssue,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 15,),
                       _text('Any phone problem?'),
                       _customContainerP(
                         DropdownButton<String>(
                          value: phoneProblemvalue,
                          
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
                              phoneProblemvalue = data!;
                            });
                          },
                          items: phoneProblem
                              .map<DropdownMenuItem<String>>((String phoneProblem) {
                            return DropdownMenuItem<String>(
                              value: phoneProblem,
                              child: Text(
                                phoneProblem,
                                style: getHintStyle(),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                        
                        

                     
          ],
        ),
      ),

          
          
        
      
    );
  

 
      
    
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