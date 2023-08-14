import 'package:flutter/material.dart';
import 'constants.dart';
import './chPizza.dart';
import './fries.dart';
import './vPizza.dart';

//void main()=> runApp(MyApp());

void main(){
  runApp(
    MyApp(),
  );
}

class pizzaScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Palace"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/screen1",
                arguments: {
                  "screenTitle":"Vegetable Pizza", "imagePath":"vegetablePZ.png"
                });
              },
                  child: Text("Vegetable Pizza")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/screen2",
                arguments: {
                  "screenTitle":"Cheese Pizza", "imagePath":"cheesePZ.png"
                });
              },
                  child: Text("Cheese Pizza")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/screen3", arguments: {
                  "screenTitle":"Fries", "imagePath":"fries.png"
                });
              },
                  child: Text("Fries")),
            ],
          ),
          SizedBox(height: 10,),
          Image(image: AssetImage("images/pizzaW.jpeg"),
            height: 250,
            width: 350,),
          Text("Hi, I am the Pizza Palace assistant,"
              " please click one of the items you would like to order!",
            style: kTextStyleButton,
            textAlign: TextAlign.center,)
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,

    );
  }
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: {
          "/home" : (context) => pizzaScreen(),  //context can be replaced with ctx
          "/screen1" : (context) => vPizza("",""),
          "/screen2" : (context) => chPizza("",""),
          "/screen3" : (context) => fries("","")
        },
    );
  }
}
