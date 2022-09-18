import 'package:flutter/material.dart';


class PredictionPrice extends StatefulWidget {
   PredictionPrice({Key? key}) : super(key: key);

  @override
  State<PredictionPrice> createState() => _PredictionPriceState();
}

class _PredictionPriceState extends State<PredictionPrice> {
  bool showvalue = false;
   bool charge =false;
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      body: Padding(
        
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
               color: Colors.grey,
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
                  ],
                ),
              ],
             )
            


          ],
        ),
      ),
    );
  }
  Widget _container (){
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade500
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
        return Colors.blue;
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
       value: this.charge,
                          onChanged: (bool? value) {
                            //if (){};
                              setState(() {
                              this.charge = value!;
                            });
                            
                            
                          },
     
      );





  }

  
   
    // Widget _DropMenu() {
    //   List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    //   String? dropdownValue = 'One';
    // return DropdownButton<String>(
    //   hint: Text('Select Brand'),
    //   value: dropdownValue,
    //   icon: const Icon(Icons.arrow_downward),
    //   elevation: 16,
    //   style: const TextStyle(color: Colors.deepPurple),
    //   underline: Container(
    //     height: 2,
    //     color: Colors.deepPurpleAccent,
    //   ),
    //   onChanged: (String? value) {
    //     // This is called when the user selects an item.
    //     setState(() {
    //       dropdownValue = value!;
    //     });
    //   },
    //   items: list.map<DropdownMenuItem<String>>((String value) {
    //     return DropdownMenuItem<String>(
    //       value: value,
    //       child: Text(value),
    //     );
    //   }).toList(),
   //  );
//}
  
  

}