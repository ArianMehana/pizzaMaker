import 'package:flutter/material.dart';

class fries extends StatelessWidget {

  String imagePath = "";
  String screenTitle = "";

  fries(this.imagePath, this.screenTitle);

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    this.screenTitle = args["screenTitle"].toString();
    this.imagePath = args["imagePath"].toString();

    return Scaffold(
      appBar: AppBar(
        title: Text("$screenTitle"),
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
          Image(image: AssetImage("images/$imagePath"),
            height: 250,
            width: 350,),
          Text("Types of Fries:"
          "\nClassic Fries"
          "\nFrench Fries"
          "\nCurly Fries"
          "\nCrispy Fries"
          "\nSteak Fries"
          "\nPotato Wedgies"
          "\nLoaded Fries",
          style: TextStyle(
            color: Colors.white
          ),)
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,
    );
  }
}
