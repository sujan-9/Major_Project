

import 'package:flutter/material.dart';


class SamsungPrediction extends StatefulWidget {
   SamsungPrediction({Key? key}) : super(key: key);

  @override
  State<SamsungPrediction> createState() => _SamsungPredictionState();
}

class _SamsungPredictionState extends State<SamsungPrediction> {
   List<String> condition = ['Like New','Goode','Bad'];
  String conditionvalue = 'Like New';

 List<String> ram = ['4GB','6GB','8GB','12GB'];
   String ramvalue = '4GB';

    List<String> storage = ['16GB','32GB','64GB','128GB','256GB','512GB'];
   String storagevalue = '16GB';

   List<String> phone = ['samsung','SamsungS21','SamsungS20','SamsungS22','SamsungS22','Iphone12'];
   String phonevalue = 'samsung';

   List<String> model = ['None','Mini','Plus','PRO','ProMax',];
   String modelvalue = 'None';

   List<String> screenIssue = ['NO','YES'];
   String screenIssuevalue = 'NO';

   List<String> phoneProblem = ['NO','YES'];
   String phoneProblemvalue = 'NO';

   List<String> batteryCondition = ['Excellent','Good','Bad'];
   String batteryConditionvalue = 'Excellent';

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
        body: SingleChildScrollView(
          child: Padding(
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
                    child:
                    //_text('hello'), 
                    DropdownButton<String>(
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
              SizedBox(height: 20,),
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
                        SizedBox(height: 15,),
                         _text('Battery Condition'),
                         _customContainerP(
                           DropdownButton<String>(
                            value: batteryConditionvalue,
                            
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
                                batteryConditionvalue = data!;
                              });
                            },
                            items: batteryCondition
                                .map<DropdownMenuItem<String>>((String batteryCondition) {
                              return DropdownMenuItem<String>(
                                value: batteryCondition,
                                child: Text(
                                  batteryCondition,
                                  style: getHintStyle(),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                          
        
               SizedBox(height: 30,),
                          InkWell(
                            onTap: null,  //post method to do
                            child: _customContainerP(
                              Center(child:  _text('Predict Price',)
                              ,),),
                          ),          
            ],
          ),
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