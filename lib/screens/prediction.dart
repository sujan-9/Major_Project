// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter/material.dart';

// class PredictionPrice extends StatefulWidget {
//   const PredictionPrice({Key? key}) : super(key: key);

//   @override
//   State<PredictionPrice> createState() => _PredictionPriceState();
// }

// class _PredictionPriceState extends State<PredictionPrice> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//     appBar: AppBar(
//       backgroundColor: Colors.transparent,
//       leading: InkWell(
//         onTap:(){Navigator.pop(context);} ,
//         child: Icon(Icons.arrow_back_ios)),
//     ),
//     body: Padding(
//       padding: EdgeInsets.fromLTRB(17, 12, 17, 10),
//       child: Column(
//        // mainAxisAlignment: MainAxisAlignment.start,
//        // crossAxisAlignment: CrossAxisAlignment.start,
//         children:  [
//             Text('Brand',
//             style: TextStyle(
//                fontSize: 20,
//                fontWeight: FontWeight.w700
//             ),
//             ),
//             SizedBox(height: 8,),
//             TextField(
//               decoration: InputDecoration(
//                 suffix: Icon(Icons.arrow_downward),
//                  border: OutlineInputBorder(
//            // borderRadius: BorderRadius.circular(15),
//             borderSide: BorderSide(color: Colors.grey, width: 2),
//               ),
//               enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: Colors.grey, width: 1.5),
//              ),
//              focusedBorder: OutlineInputBorder(
//           gapPadding: 0.0,
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 2),
//              ),
//               ),
//             ),
//              SizedBox(height: 12,),
//               Text('Condition',
//             style: TextStyle(
//                fontSize: 20,
//                fontWeight: FontWeight.w700
//             ),
//             ),
//             SizedBox(height: 8,),
//             Row(
//               //to implement checkbox
//               children: [
//                 Checkbox(value: true, onChanged: null,
                 
//                 activeColor: Colors.red,
//                 focusColor: Colors.blue,
//                 )
//               ],
//             ),
//              _column(),
//         ]),
//     ),
//       ),
//     );
//   }
//   Widget _column (){
//     return Column(
//      // mainAxisAlignment: MainAxisAlignment.center,
//      // crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text('Model',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w600
//             ),
//             ),
//             Text('Storage',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w600
//             ),
//             ),
            


//           ],
//         ),
//      SizedBox(height: 5,),
//       Row(
//         children: [
//            TextField(
//               decoration: InputDecoration(
//                 suffix: Icon(Icons.arrow_downward),
//                  border: OutlineInputBorder(
//            // borderRadius: BorderRadius.circular(15),
//             borderSide: BorderSide(color: Colors.grey, width: 2),
//               ),
//               enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: Colors.grey, width: 1.5),
//              ),
//              focusedBorder: OutlineInputBorder(
//           gapPadding: 0.0,
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 2),
//              ),
//               ),
//             ),
            
//         ],
//       )
//       ],

//     );
//   }
// }