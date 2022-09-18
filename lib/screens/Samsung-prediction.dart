

import 'package:flutter/material.dart';


class SamsungPrediction extends StatefulWidget {
   SamsungPrediction({Key? key}) : super(key: key);

  @override
  State<SamsungPrediction> createState() => _SamsungPredictionState();
}

class _SamsungPredictionState extends State<SamsungPrediction> {
   String dropdownvalue = 'model';
 // var items =  ['Apple','Banana','Grapes','Orange','watermelon','Pineapple'];
 List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DropdownButton<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownvalue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ));
  }
}