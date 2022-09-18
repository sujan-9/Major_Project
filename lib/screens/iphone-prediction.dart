

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';


class IphonePrediction extends StatefulWidget {
   IphonePrediction({Key? key}) : super(key: key);

  @override
  State<IphonePrediction> createState() => _IphonePredictionState();
}

class _IphonePredictionState extends State<IphonePrediction> {
  // static int _len = 3;
  // List<String> value = ['Like New','Goode','Bad'];
  // List<bool> isChecked = List.generate(_len, (index) => false);
 // bool _check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          height: 50,
          color: Colors.grey.shade400,
          child: Row(
            children: [
              Expanded(child: TextField(
                readOnly: true,
                
                 decoration:  InputDecoration.collapsed(
                    hintText: 'Select Condition'
                    
           
              
                ),
              )),
              InkWell(
                onTap: (){
                 _dialogBuilder(context);
                },
                child: Icon(Icons.home))
            ],
          ),
          
        )
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Condition'),
          
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  

}