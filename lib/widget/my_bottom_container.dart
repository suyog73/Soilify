// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soil_doc/services/location.dart';
import 'package:soil_doc/services/networking.dart';
import 'package:soil_doc/services/weather.dart';

class MyBottomContainer extends StatefulWidget {
  const MyBottomContainer({
    Key? key,
    required this.size,
    this.dir = 1,
    this.locationWeather,
  }) : super(key: key);

  final Size size;
  final int dir;
  final dynamic locationWeather;

  @override
  State<MyBottomContainer> createState() => _MyBottomContainerState();
}

class _MyBottomContainerState extends State<MyBottomContainer> {
  WeatherModel weather = WeatherModel();
  int temp = 0;
  int tempMin = 0;
  int tempMax = 0;
  int feelsLike = 0;
  double windSpeed = 0;
  int humidity = 0;
  IconData? weatherIcon; // id
  String city = '';
  String description = '';
  String weatherMsg = '';

  void updateUi(dynamic weatherData) {
    setState(
      () {
        if (weatherData == null) {
          weatherMsg = 'Unable to get weather data';
          city = 'Unspecified';
          weatherIcon = FontAwesomeIcons.frown;
          temp = 0;
          tempMin = 1;
          tempMax = -2;
          feelsLike = 0;
          description = '';
          windSpeed = 0;
          humidity = 0;
          return;
        }
        double tp = weatherData['main']['temp'];
        temp = tp.toInt();
        double tpMin = weatherData['main']['temp_min'];
        tempMax = tpMin.toInt();
        double tpMax = weatherData['main']['temp_max'];
        tempMin = tpMax.toInt();
        double tpFeel = weatherData['main']['feels_like'];
        feelsLike = tpFeel.toInt();
        windSpeed = weatherData["wind"]["speed"];
        humidity = weatherData["main"]["humidity"];

        var condition = weatherData['weather'][0]['id'];
        weatherIcon = weather.getWeatherIcon(condition);
        city = weatherData['name'];
        description = weatherData['weather'][0]['description'];

        weatherMsg = weather.getMessage(temp);

        // print('temp $city');
      },
    );
  }

  @override
  void initState() {
    super.initState();
    // getLocationWeather();
    updateUi(widget.locationWeather);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.3,
      width: widget.size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.only(
          topRight: widget.dir == 1 ? Radius.circular(50) : Radius.circular(0),
          topLeft: widget.dir == 2 ? Radius.circular(50) : Radius.circular(0),
        ),
      ),
      child: widget.dir == 1
          ? Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${tempMax + 2}°C',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    'max',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '${tempMin - 1}°C',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    'min',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(weatherIcon, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              description[0].toUpperCase() +
                                  description.substring(1),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Rain",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(FontAwesomeIcons.wind, color: Colors.white),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            windSpeed.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Wind",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.water_drop_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            humidity.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Humidity",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
