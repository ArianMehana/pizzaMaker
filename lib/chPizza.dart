import 'package:flutter/material.dart';

class chPizza extends StatelessWidget {

  String screenTitle = "";
  String imagePath = "";

  chPizza(this.screenTitle, this.imagePath);

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
              "\n1 (4 ounce) package active dry yeast"

              "\n1 cup plus 2 tablespoons warm water"

              "\n3 1/2 cups flour"

              "\n3 tablespoons virgin olive oil"

              "\n2 1/2 teaspoon kosher salt"

              "\n1 cup pizza sauce"

              "\n8 oz provolone cheese, thinly-sliced"

              "\n2 cups shredded mozzarella cheese"

              "\n6 tablespoon grated parmesan cheese",
            style: TextStyle(
                color: Colors.white
            ),
            textAlign: TextAlign.left,)
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,
    );
  }
}
