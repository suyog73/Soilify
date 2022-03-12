// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/screen/irrigation_read_more.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key, this.dir = 1}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
  final int dir;
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    String title = widget.dir == 1
        ? "Irrigation"
        : widget.dir == 4
            ? "Fertilizers"
            : "";
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreenColorShade,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: widget.dir == 1
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0)
                    .copyWith(top: 20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(18),
                      alignment: AlignmentDirectional.topStart,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kGreenColorShade,
                          width: 2,
                        ),
                      ),
                      // height: size.height * 0.3,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Types Of Irrigation:',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Irrigation is the agricultural process of applying controlled amounts of water to land to assist in the production of crops, as well as to grow landscape plants and lawns, where it may be known as watering. Five highly effective methods of irrigation.",
                            style: TextStyle(fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => IrrigationReadMore(),
                                ),
                              );
                            },
                            child: Text(
                              'Read More...',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(18),
                      alignment: AlignmentDirectional.topStart,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kGreenColorShade,
                          width: 2,
                        ),
                      ),
                      // height: size.height * 0.3,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Examples',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Here are the different examples of crops which uses different types of irrigation methods.",
                            style: TextStyle(fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      IrrigationReadMore(card: 2),
                                ),
                              );
                            },
                            child: Text(
                              'Read More...',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(18),
                      alignment: AlignmentDirectional.topStart,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: kGreenColorShade,
                          width: 2,
                        ),
                      ),
                      // height: size.height * 0.3,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips for Irrigation:',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Here are some tips for irrigation to increase the fertility of soil.",
                            style: TextStyle(fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      IrrigationReadMore(card: 3),
                                ),
                              );
                            },
                            child: Text(
                              'Read More...',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              )
            : widget.dir == 4
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0)
                        .copyWith(top: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(18),
                          alignment: AlignmentDirectional.topStart,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: kGreenColorShade,
                              width: 2,
                            ),
                          ),
                          // height: size.height * 0.3,
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Examples',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Here are the different examples of crops which uses different types of irrigation methods.",
                                style: TextStyle(fontSize: 17),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          IrrigationReadMore(card: 2),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Read More...',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                : Container(),
      ),
    );
  }
}
