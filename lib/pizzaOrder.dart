import 'package:flutter/material.dart';
import 'pizza_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pizza Order"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            PizzaScreen(pizzaTitle: "Vegetable Pizza", pizzaImage: "images/vegetablePZ.png"),
            PizzaScreen(pizzaTitle: "Cheese Pizza", pizzaImage: "images/cheesePZ.png"),
            PizzaScreen(pizzaTitle: "Box of Fries", pizzaImage: "images/fries.png")
          ],
        ),
      )
    );
  }
}
