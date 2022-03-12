// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/models/user_models.dart';
import 'package:soil_doc/screen/card_screen.dart';
import 'package:soil_doc/widget/my_bottom_container.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.locationWeather}) : super(key: key);

  final dynamic locationWeather;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kGreenColorShade.withOpacity(0.5),
              ),
              accountName: Text(
                UserModel.name.toString(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              accountEmail: Text(
                UserModel.email.toString(),
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Text(
                  UserModel.name.toString().substring(0, 1),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(Icons.home, color: kGreenColorShade),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Weather",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(Icons.cloud, color: kGreenColorShade),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "About Soilify",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(Icons.shield, color: kGreenColorShade),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Close",
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
            Divider(),
            SizedBox(height: 20),
            InkWell(
              child: Expanded(
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    color: kGreenColorShade.withOpacity(0.5),
                  ),
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: kGreenColorShade,
        title: Text('Soilify'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => CardScreen(),
                              //   ),
                              // );
                            },
                            child: MyContainer(
                              size: size,
                              text: 'Soil',
                              img: 'img44',
                              dir: 1,
                            ),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CardScreen(),
                                ),
                              );
                            },
                            child: MyContainer(
                              size: size,
                              text: 'Irrigation',
                              img: 'img22',
                              dir: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyContainer(
                            size: size,
                            text: 'Crops',
                            img: 'img33',
                            dir: 3,
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CardScreen(dir: 4),
                                ),
                              );
                            },
                            child: MyContainer(
                              size: size,
                              text: 'Fertilizers',
                              img: 'img11',
                              dir: 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyBottomContainer(
                      size: size,
                      dir: 1,
                      locationWeather: widget.locationWeather,
                    ),
                    MyBottomContainer(
                      locationWeather: widget.locationWeather,
                      size: size,
                      dir: 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.size,
    required this.text,
    required this.img,
    required this.dir,
  }) : super(key: key);

  final Size size;
  final String text, img;
  final int dir;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      height: size.width * 0.35,
      width: size.width * 0.35,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.only(
          topRight: dir == 2 ? Radius.circular(0) : Radius.circular(40),
          topLeft: dir == 1 ? Radius.circular(0) : Radius.circular(40),
          bottomLeft: dir == 3 ? Radius.circular(0) : Radius.circular(40),
          bottomRight: dir == 4 ? Radius.circular(0) : Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/images/$img.jpeg"),
            width: 70,
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
