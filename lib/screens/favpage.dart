import 'package:flutter/material.dart';
import 'package:loginbar/screens/detail_page.dart';


class FavPage extends StatefulWidget {
   FavPage({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(false);
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop(true);
            },
             icon: Icon(Icons.arrow_back_ios)),
             
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 50),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: 25,right: 10,bottom: 25),
                child: Row(
                  children: [
                    InkWell(
                       onTap: (){
                            Navigator.pushNamed(context, '/ProductDetail');
                         },
      //                    onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ProductDetail()),
      // );
    
                      child: Container(
                        height: 100,
                        width: 100,
                       
                        decoration: BoxDecoration(
                          //image: todo
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                           image: DecorationImage(
                             image: AssetImage('assets/images/login.png'),
                             fit: BoxFit.cover),
                                    ),
                        
                      ),
                    ),
                    Container(
                      //height: 80,
                      margin: EdgeInsets.only(top: 20,bottom: 20,right: 20),
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                       
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text('XYZ pro max',
                         style: TextStyle(fontSize: 17,
                         fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('Rs 100900',
                         style: TextStyle(fontSize: 15,
                         fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                           
    
                        ],
                      ),
    
                    ),
                    SizedBox(width: 70,),
                    GestureDetector(
                  child: Icon(
                    
                    Icons.remove_circle,
                    color: Colors.red,
                    size: 27,
                  ),)
                  ],
                ),
              );
            }),
      ),
    );
  }
}