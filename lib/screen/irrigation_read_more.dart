// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';

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
                        // border: Border.all(
                        //   color: kGreenColorShade,
                        //   width: 2,
                        // ),
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
                            image: AssetImage("assets/images/drip.jpg"),
                          ),

                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 3) Surface irrigation

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
                            image: AssetImage("assets/images/surface.jpg"),
                          ),
                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 4) Basin irrigation

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
                            image: AssetImage("assets/images/basin.jpg"),
                          ),

                          SizedBox(height: 15),
                          Divider(color: Colors.black),
                          SizedBox(height: 15),

                          // 5) Furrow irrigation

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
                        MyImageContainer(size: size, name: 'wheat'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'watermelon'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'sugarcane'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'strawberry'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'soyabean'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'red gram'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'pineapple'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'papaya'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'sapota'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'mulberry'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'mango'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'maize'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'lemon'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'guava'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'groundnut-crop'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'green gram'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'grapes'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'cotton'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'black gram'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'banana'),
                        SizedBox(height: 20),
                        MyImageContainer(size: size, name: 'apples'),
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
  }) : super(key: key);

  final Size size;
  final String name;

  @override
  Widget build(BuildContext context) {
    String jpg = "jpg";
    if (name == "soyabean") {
      jpg = "jpeg";
    }
    if (name == "grapes") {
      jpg = "png";
    }

    return Container(
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
    );
  }
}
