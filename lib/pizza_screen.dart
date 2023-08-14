import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PizzaScreen extends StatelessWidget {
  String pizzaTitle = "";
  String pizzaImage = "";

  PizzaScreen({required this.pizzaTitle, required this.pizzaImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(image: AssetImage(pizzaImage),
            width: 135,
            height: 150,),
          SizedBox(width: 15,),
          Text(
              pizzaTitle,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: Colors.white,
              ))
        ],
      ),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.redAccent,
      ),
    );
  }
}
