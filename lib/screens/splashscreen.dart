import 'package:flutter/material.dart';



class splashscreen extends StatefulWidget {
   final String? text, image;

   splashscreen({Key? key, this.text, this.image}) : super(key: key);
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to SellPhone, Let’s sell phones!",
      "image": "assets/images/login.png"
    },
    {
      "text":
          "We help people to predict their used phones and sell as well as buy used ihones",
      "image": "assets/images/login.png"
    },
    {
      "text": "Predict price of your used phone ",
      "image": "assets/images/login.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          height: 600,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context,index) =>_splashContent(
                    splashData[index]["text"],
                    splashData[index]["image"],
                   ),
                 
                ),
              ),
              Expanded(
              //  flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey
                        ),
                        child: TextButton(
                          //text: "Continue",
                          child: Text('Skip',
                          style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),),
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          
                          },
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color.fromARGB(255, 150, 148, 148) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
  Widget _splashContent(String? text,image, ){
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "SELLPHONE",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 40,),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image!,
          height: 280,
          width: 230,
        ),
      ],
    );

  }
}
