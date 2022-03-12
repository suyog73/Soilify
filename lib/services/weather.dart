import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'location.dart';
import 'networking.dart';

const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
const appid = 'f18580add7126b67a44f481e16275e0b';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$openWeatherMapURL?q=$cityName&appid=$appid&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url);

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    print(location.latitude);
    print(location.longitude);

    var url =
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$appid&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url);

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return (FontAwesomeIcons.pooStorm);
    } else if (condition < 400) {
      return FontAwesomeIcons.cloudRain;
    } else if (condition < 600) {
      return FontAwesomeIcons.cloudSunRain;
    } else if (condition < 700) {
      return FontAwesomeIcons.solidSnowflake;
    } else if (condition < 800) {
      return FontAwesomeIcons.wind;
    } else if (condition == 800) {
      return FontAwesomeIcons.cloud;
    } else if (condition <= 804) {
      return FontAwesomeIcons.cloudSun;
    } else {
      return FontAwesomeIcons.bed;
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
