import 'package:flutter/material.dart';

class vPizza extends StatelessWidget {
  String imagePath = "";
  String screenTitle = "";

  vPizza(this.imagePath, this.screenTitle);

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
          Text("Ingredients: "
              "\n2 (8 ounce) packages refrigerated crescent rolls"

         "\n1 cup sour cream"

          "\n1 (8 ounce) package cream cheese, softened"

          "\n1 (1 ounce) package ranch seasoning mix"

          "\n1 teaspoon dried dill weed"

          "\n1/4 teaspoon garlic salt"

          "\n1 1/2 cups chopped fresh broccoli"

          "\n1/2 cup halved and thinly-sliced radishes"

          "\n1 small onion, finely chopped"

          "\n1 red bell pepper, chopped"

          "\n1 carrot, grated"

          "\n1 stalk celery, thinly sliced",
          style: TextStyle(
            color: Colors.white
          ),
          textAlign: TextAlign.left,),
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,
    );
  }
}
