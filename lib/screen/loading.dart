// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/screen/home_page.dart';
import 'package:soil_doc/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    WeatherModel weatherModel = WeatherModel();

    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomePage(locationWeather: weatherData);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        progressIndicator: CircularProgressIndicator(color: kGreenColorShade),
        inAsyncCall: true,
        child: Container(color: Colors.white),
      ),
    );
  }
}
