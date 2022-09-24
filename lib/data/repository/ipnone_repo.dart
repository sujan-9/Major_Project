import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String? batteryvalue;

String? storagevalue;

String? iphonevalue;

String? modelvalue;

String? screenissuesvalue;

String? truetonevalue;

String? bodyissuesvalue;

String? touchidfaceidvalue;

Future<String> predictPrice(
    String iphone,
    String model,
    String storage,
    String battery,
    String touchidfaceid,
    String truetone,
    String screenissues,
    String bodyissues) async {
  final http.Response response = await http.post(
    Uri.parse('https://ipflask2.herokuapp.com/predictiphone'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "iPhone": iphone,
      "Model": model,
      "Storage": storage,
      "Battery": battery,
      "TrueTone": truetone,
      "TouchIDFaceID": touchidfaceid,
      "ScreenIssues": screenissues,
      "BodyIssues": bodyissues
    }),
  );

  if (response.statusCode == 200) {
    String _body = response.body; //<--- HERE!
    Map _json = jsonDecode(_body);
    String _id = _json['Price'];
    return _id;
  } else {
    throw Exception(response.statusCode);
  }
}

class iphonePrediction extends StatefulWidget {
  iphonePrediction({Key? key}) : super(key: key);

  @override
  State<iphonePrediction> createState() => _iphonePredictionState();
}

class _iphonePredictionState extends State<iphonePrediction> {
  Future<String>? futurePrice;
  
  

  getHintStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w400,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('iPhone Price Prediction'),
              leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.black,),
              onPressed: (){
                Navigator.pop(context);
              },),
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                _text('Choose your iPhone'),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: DropdownButton<String>(
                                      hint: Text(
                                        'Select Phone',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      value: iphonevalue,
                                      isExpanded: true,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      underline: SizedBox(),
                                      elevation: 0,
                                      style: getHintStyle(),
                                      onChanged: (String? selectedIphone) {
                                        if (selectedIphone is String) {
                                          setState(() {
                                            iphonevalue = selectedIphone;
                                          });
                                        }
                                      },
                                      items:  [
                                        DropdownMenuItem(
                                            child: Text("7"), value: "7"),
                                        DropdownMenuItem(
                                            child: Text("8"), value: "8"),
                                        DropdownMenuItem(
                                            child: Text("X"), value: "X"),
                                        DropdownMenuItem(
                                            child: Text("11"), value: "11"),
                                        DropdownMenuItem(
                                            child: Text("12"), value: "12"),
                                        DropdownMenuItem(
                                            child: Text("13"), value: "13")
                                      ]),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                _text('Choose your model'),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: DropdownButton<String>(
                                      hint: Text(
                                        'base/plus/pro/S',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      value: modelvalue,
                                      isExpanded: true,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      underline: SizedBox(),
                                      elevation: 0,
                                      style: getHintStyle(),
                                      onChanged: (String? selectedModel) {
                                        if (selectedModel is String) {
                                          setState(() {
                                            modelvalue = selectedModel;
                                          });
                                        }
                                      },
                                      items: const [
                                        DropdownMenuItem(
                                            child: Text("base"), value: "base"),
                                        DropdownMenuItem(
                                            child: Text("Plus"), value: "plus"),
                                        DropdownMenuItem(
                                            child: Text("Pro"), value: "pro"),
                                        DropdownMenuItem(
                                            child: Text("Pro Max"),
                                            value: "promax"),
                                        DropdownMenuItem(
                                            child: Text("S"), value: "S"),
                                        DropdownMenuItem(
                                            child: Text("S Max"),
                                            value: "Smax"),
                                        DropdownMenuItem(
                                            child: Text("R"), value: "R")
                                      ]),
                                ),
                              ],
                            ),
                          ]),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('Choose your storage'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Internal storage of your iPhone',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: storagevalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedStorage) {
                              if (selectedStorage is String) {
                                setState(() {
                                  storagevalue = selectedStorage;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(child: Text("3GB"), value: "32"),
                              DropdownMenuItem(
                                  child: Text("64GB"), value: "64"),
                              DropdownMenuItem(
                                  child: Text("128GB"), value: "128"),
                              DropdownMenuItem(
                                  child: Text("256GB"), value: "256"),
                              DropdownMenuItem(
                                  child: Text("512GB"), value: "512"),
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('How much Battery Health does your iPhone have?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Check your battery settings to know your battery health',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: batteryvalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedBattery) {
                              if (selectedBattery is String) {
                                setState(() {
                                  batteryvalue = selectedBattery;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(
                                  child: Text("Above 90%"), value: "1"),
                              DropdownMenuItem(
                                  child: Text("Between 80-90%"), value: "2"),
                              DropdownMenuItem(
                                  child: Text("Below 80%"), value: "3"),
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('Does TouchID/FaceID work?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Is Fingerprint/Face Scanner properly working?',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: touchidfaceidvalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedID) {
                              if (selectedID is String) {
                                setState(() {
                                  touchidfaceidvalue = selectedID;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(child: Text("Yes"), value: "1"),
                              DropdownMenuItem(child: Text("No"), value: "0"),
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('Does TrueTone work?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Truetone is available in original displays.',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: truetonevalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedTruetone) {
                              if (selectedTruetone is String) {
                                setState(() {
                                  truetonevalue = selectedTruetone;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(child: Text("Yes"), value: "1"),
                              DropdownMenuItem(child: Text("No"), value: "0"),
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('Are there any issues related to screen?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Issues like cracked screen, white lines, dead spots.',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: screenissuesvalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedScreenIssues) {
                              if (selectedScreenIssues is String) {
                                setState(() {
                                  screenissuesvalue = selectedScreenIssues;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(child: Text("Yes"), value: "1"),
                              DropdownMenuItem(child: Text("No"), value: "0"),
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('Are there any issues related to the phone body?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Issues like dents, scratches, cracks.',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: bodyissuesvalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedBodyIssues) {
                              if (selectedBodyIssues is String) {
                                setState(() {
                                  bodyissuesvalue = selectedBodyIssues;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(child: Text("Yes"), value: "1"),
                              DropdownMenuItem(child: Text("No"), value: "0"),
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          child: Text('Predict Price',style: TextStyle(color: Colors.white),),
                           style: ElevatedButton.styleFrom(
                            alignment: Alignment.center,
                                    primary: Colors.grey.shade600,
                                     fixedSize:  Size(150, 55),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50))),
                              
                          onPressed: () {
                            setState(() {
                              predictPrice(
                                  iphonevalue ?? "",
                                  modelvalue ?? "",
                                  storagevalue ?? "",
                                  batteryvalue ?? "",
                                  touchidfaceidvalue ?? "",
                                  truetonevalue ?? "",
                                  screenissuesvalue ?? "",
                                  bodyissuesvalue ?? "");
                            });
                            
                          },
                        ),
                      ),
                      SizedBox(height: 10,),
                      FutureBuilder(
                          future: predictPrice(
                              iphonevalue ?? "",
                              modelvalue ?? "",
                              storagevalue ?? "",
                              batteryvalue ?? "",
                              touchidfaceidvalue ?? "",
                              truetonevalue ?? "",
                              screenissuesvalue ?? "",
                              bodyissuesvalue ?? ""),
                          builder: (context, snapshot) {
                            /*if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator.adaptive();
                            }*/
                            if (snapshot.hasError) {
                              return Text("");
                            } else {

                              return Container(
                                padding: EdgeInsets.all(10),
                                // decoration: BoxDecoration(
                                //   color: Colors.grey.shade700
                                // ),
                                child: 




                                 Text(
                                    'The predicted price of this iPhone is Rs. ' +
                                         (snapshot.data.toString()),
                                     style: TextStyle(fontSize: 20,
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black),
                                   ),
                              );
                              // return Column(
                              //   mainAxisSize: MainAxisSize.min,
                              //   children: [
                              //     Text(
                              //       'The predicted price of this iPhone is Rs. ' +
                              //           (snapshot.data.toString()),
                              //       style: TextStyle(fontSize: 20,
                              //       fontWeight: FontWeight.w400),
                              //     )
                              //   ],
                              // );
                            }
                          })
                    ]),
              ),
            )));
  }
}







Widget _text(String value) {
  return Text(
    value,
    style: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
  );
}

Widget _customContainerP(Widget menu) {
  return Container(
    // margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
    height: 45,

    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(15),
    ),
    child: menu,
  );
  showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}
