// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/screen/Auth%20Screens/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static String id = 'onBoarding_screen';

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          height: size.height,
          color: Color(0xff1ac714).withOpacity(0.5),
          child: IntroductionScreen(
            pages: [
              PageViewModel(
                title: 'Methods and types',
                body: 'Know more about irrigation methods and soil types.',
                image: Image(
                  image: AssetImage('assets/images/img1.jpg'),
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.cover,
                ),
                decoration: kGetPageDecoration(),
              ),
              PageViewModel(
                title: 'Cultivation Tips',
                body: 'Receive farming advice about how to improve your yield.',
                image: Image(
                  image: AssetImage('assets/images/img2.jpg'),
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                decoration: kGetPageDecoration(),
              ),
              PageViewModel(
                title: 'Nurture',
                body:
                    'Cultivate different crops based on different types of land.',
                image: Image(
                  image: AssetImage('assets/images/img3.jpg'),
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                decoration: kGetPageDecoration(),
              ),
            ],
            done: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            onDone: () => goToHome(context),
            showSkipButton: true,
            skip: Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onSkip: () => goToHome(context),
            next: Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 26,
            ),
            dotsDecorator: kGetDotDecoration(),
            globalBackgroundColor: Color(0xff1ac714).withOpacity(0.1),
            skipFlex: 0,
            nextFlex: 0,
          ),
        ),
      ),
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
}
