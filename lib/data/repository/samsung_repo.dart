/// IphonePrediction is a StatefulWidget that creates a State object called _IphonePredictionState
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String? batteryvalue;
String? storagevalue;
String? modelvalue;
String? ramvalue;
String? variantvalue;
String? screenissuesvalue;
String? bodyissuesvalue;

Future<String> predictPrice(String model, String variant, String storage,
    String ram, String battery, String screenissues, String bodyissues) async {
  final http.Response response = await http.post(
    Uri.parse('https://sellphone-samsung-api.herokuapp.com/predictsamsung'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "Model": model,
      "Variant": variant,
      "Storage": storage,
      "RAM": ram,
      "Battery": battery,
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

class samsungPrediction extends StatefulWidget {
  samsungPrediction({Key? key}) : super(key: key);

  @override
  State<samsungPrediction> createState() => _samsungPredictionState();
}

class _samsungPredictionState extends State<samsungPrediction> {
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
    return  Scaffold(
            appBar: AppBar(
              title: Text('Samsung Phone Price Prediction'),
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
                                _text('Choose Model'),
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
                                        'S/Note/Z series',
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
                                            child: Text("Galaxy S8"),
                                            value: "S8"),
                                        DropdownMenuItem(
                                            child: Text("Galaxy S9"),
                                            value: "S9"),
                                        DropdownMenuItem(
                                            child: Text("Galaxy S10"),
                                            value: "S10"),
                                        DropdownMenuItem(
                                            child: Text("Galaxy S20"),
                                            value: "S20"),
                                        DropdownMenuItem(
                                            child: Text("Galaxy S21"),
                                            value: "S21"),
                                        DropdownMenuItem(
                                            child: Text("Note 9"),
                                            value: "Note9"),
                                        DropdownMenuItem(
                                            child: Text("Note 10"),
                                            value: "Note10"),
                                        DropdownMenuItem(
                                            child: Text("Note 20"),
                                            value: "Note20"),
                                        DropdownMenuItem(
                                            child: Text("Z Fold 2"),
                                            value: "Z2"),
                                        DropdownMenuItem(
                                            child: Text("Z Fold 3"),
                                            value: "Z3"),
                                        DropdownMenuItem(
                                            child: Text("A52"), value: "A52")
                                      ]),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                _text('Choose your Variant'),
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
                                        'base/Plus/Ultra',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      value: variantvalue,
                                      isExpanded: true,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      underline: SizedBox(),
                                      elevation: 0,
                                      style: getHintStyle(),
                                      onChanged: (String? selectedVariant) {
                                        if (selectedVariant is String) {
                                          setState(() {
                                            variantvalue = selectedVariant;
                                          });
                                        }
                                      },
                                      items: const [
                                        DropdownMenuItem(
                                            child: Text("base"), value: "base"),
                                        DropdownMenuItem(
                                            child: Text("plus"), value: "plus"),
                                        DropdownMenuItem(
                                            child: Text("ultra"),
                                            value: "ultra")
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
                              'Internal storage of your phone in GB',
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
                              DropdownMenuItem(
                                  child: Text("32GB"), value: "32"),
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
                      _text('How much RAM does your phone have?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              '4GB/ 6GB/ 8GB/ 12GB',
                              style: TextStyle(fontSize: 15),
                            ),
                            value: ramvalue,
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            underline: SizedBox(),
                            elevation: 0,
                            style: getHintStyle(),
                            onChanged: (String? selectedRam) {
                              if (selectedRam is String) {
                                setState(() {
                                  ramvalue = selectedRam;
                                });
                              }
                            },
                            items: const [
                              DropdownMenuItem(child: Text("4GB"), value: "4"),
                              DropdownMenuItem(child: Text("6GB"), value: "6"),
                              DropdownMenuItem(child: Text("8GB"), value: "8"),
                              DropdownMenuItem(child: Text("12GB"), value: "12")
                            ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      _text('How is the condition of your phone battery life?'),
                      const SizedBox(
                        height: 5,
                      ),
                      _customContainerP(
                        DropdownButton<String>(
                            hint: Text(
                              'Check your battery settings to know your battery  condition',
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
                                  child: Text("Excellent"), value: "1"),
                              DropdownMenuItem(child: Text("Good"), value: "2"),
                              DropdownMenuItem(child: Text("Bad"), value: "3"),
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
                      ElevatedButton(
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
                                modelvalue ?? "",
                                variantvalue ?? "",
                                storagevalue ?? "",
                                ramvalue ?? "",
                                batteryvalue ?? "",
                                screenissuesvalue ?? "",
                                bodyissuesvalue ?? "");
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FutureBuilder(
                          future: predictPrice(
                              modelvalue ?? "",
                              variantvalue ?? "",
                              storagevalue ?? "",
                              ramvalue ?? "",
                              batteryvalue ?? "",
                              screenissuesvalue ?? "",
                              bodyissuesvalue ?? ""),
                          builder: (context, snapshot) {
                            /* if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator.adaptive();
                            }*/
                            if (snapshot.hasError) {
                              return Text("");
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'The predicted price of this Samsung Phone is Rs. ' +
                                        (snapshot.data.toString()),
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              );
                            }
                          })
                    ]),
              ),
            ));
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
}
