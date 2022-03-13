// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/screen/vegetables_description.dart';

class IrrigationReadMore extends StatefulWidget {
  const IrrigationReadMore({Key? key, this.card = 1}) : super(key: key);

  final int card;

  @override
  State<IrrigationReadMore> createState() => _IrrigationReadMoreState();
}

class _IrrigationReadMoreState extends State<IrrigationReadMore> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String title = widget.card == 1
        ? "Types of Irrigation"
        : widget.card == 2
            ? "Examples"
            : widget.card == 3
                ? "Tips For Irrigation"
                : "";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: kGreenColorShade,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          // Card 1 content
          child: widget.card == 1
              ? Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(18),
                      alignment: AlignmentDirectional.topStart,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // height: size.height * 0.3,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Irrigation is the agricultural process of applying controlled amounts of water to land to assist in the production of crops, as well as to grow landscape plants and lawns, where it may be known as watering.",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Five highly effective methods of irrigation:-",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),

                          // 1) Sprinkler irrigation

                          Text(
                            "1) Sprinkler irrigation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              Text(
                                "- Sprinkler irrigation is similar to rainfall.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- In this type, water is pumped using a pipe system and then sprayed through sprinkler heads.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- With Sprinkler Irrigation field areas irrespective of their sizes can be covered efficiently.",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Image(
                            image: AssetImage("assets/images/sprinkler.jpg"),
                          ),
                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 2)Drip irrigation

                          Text(
                            "2) Drip irrigation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              Text(
                                "- Drip irrigation can be defined as the method in which water drips slowly via a pipe system to the roots of the plants either from above or below the soil surface.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "-It is also known as micro-irrigation by which both water and soil nutrients can be saved.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- A set up of valves, tubes, pipes, and emitters is used for drip irrigation.",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Image(
                            image: AssetImage("assets/images/drip.jpg"),
                          ),

                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 3) Surface irrigation

                          Text(
                            "3) Surface irrigation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              Text(
                                "- Surface irrigation has been practiced and followed for many years now.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "-It can be defined as a group of techniques where water is distributed over the surface of the soil gravity.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- In this type of irrigation, either the field is flooded (this is known as Basin Irrigation) or the water is fed into small channels (this is known as furrow irrigation).",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Image(
                            image: AssetImage("assets/images/surface.jpg"),
                          ),
                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 4) Basin irrigation

                          Text(
                            "4) Basin irrigation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              Text(
                                "- Basin Irrigation method is primarily used for crops that stand in water for more extended periods, flat lands where rice is grown or in terraces on hillsides.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- In Basin Irrigation flat areas of land are surrounded by low bunds. These bunds block the water and prevent it from entering the adjacent fields.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- Trees can also be grown using basin irrigation method.",
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                "- Basin irrigation is suitable pastures, citrus, banana and to some extent tobacco.",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Image(
                            image: AssetImage("assets/images/basin.jpg"),
                          ),

                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 5) Furrow irrigation

                          Text(
                            "5) Furrow irrigation",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Column(
                            children: [
                              Text(
                                "- The application in which small channels carry water in between the crop rows and down the slope is known as Furrow irrigation.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- Furrow irrigation is preferable to row crops and the ones that cannot thrive waterlogging.",
                                style: TextStyle(fontSize: 17),
                              ),
                              // SizedBox(height: 5),
                              Text(
                                "- Only maize, sunflower, sugarcane, and soyabean can be irrigated via furrow irrigation.",
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                "- While Tomatoes, Potatoes, Beans, Citrus and Grape would be damages if grown with Furrow Irrigation.",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Image(
                            image: AssetImage("assets/images/furrow.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                )

              // Card 2 content

              : widget.card == 2
                  ? Column(
                      children: [
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'wheat',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "Wheat"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'watermelon',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "Watermelon"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'sugarcane',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "sugarcane"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'strawberry',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "strawberry"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'soyabean',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "soyabean"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'red gram',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                    title: "Red Gram", id: 6),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'pineapple',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "pineapple"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'papaya',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "papaya"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'sapota',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                  title: "sapota",
                                  id: 9,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'mulberry',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "mulberry"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'mango',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                    title: "Mango", id: 11),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'maize',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                  title: "maize",
                                  id: 12,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'lemon',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                  title: "lemon",
                                  id: 13,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'guava',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "guava"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'groundnut',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                  title: "groundnut",
                                  id: 15,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'green gram',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "green gram"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'grapes',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VegetablesDescription(
                                  title: "grapes",
                                  id: 17,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'cotton',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "cotton"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'black gram',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "black gram"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'banana',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "banana"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        MyImageContainer(
                          size: size,
                          name: 'apples',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VegetablesDescription(title: "apples"),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                      ],
                    )
                  :
                  // Card 3 Content
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Irrigation Tips:-",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "1) Understand how much electricity your irrigation pumps use,The more you know about your energy consumption the better you will be at addressing your rising energy costs.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "2) Make sure your irrigation pumps are working well over 60% efficiency.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "3) Make sure you are using energy-efficient water conservation practices.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "4) Land suitability.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "5) Effective rainfall.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "6) Decide when to irrigate (this depends on the soil, crop, and climatic condition).",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "7) How much water is required by the crop.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "8) Select the most suitable method to irrigate.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "9) Quality of the irrigated water.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "10) Water Deeply, Not Frequently.",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "11) Think slow and deep when irrigating lawns and gardens. When water is applied too quickly, much is lost to runoff. Irrigating slowly allows water to soak into the ground. Drip irrigation is excellent for this purpose, but lowering the water flow to sprinklers also works.",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
        ),
      ),
    );
  }
}

class MyImageContainer extends StatelessWidget {
  const MyImageContainer({
    Key? key,
    required this.size,
    required this.name,
    this.onTap,
  }) : super(key: key);

  final Size size;
  final String name;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    String jpg = "jpg";
    if (name == "soyabean") {
      jpg = "jpeg";
    }
    if (name == "grapes") {
      jpg = "png";
    }

    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/images/$name.$jpg"),
              width: size.width * 0.5,
              fit: BoxFit.fitWidth,
            ),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Text(
                  name[0].toUpperCase() + name.substring(1),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
