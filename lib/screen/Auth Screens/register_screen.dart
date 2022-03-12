// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/helpers/validators.dart';
import 'package:soil_doc/screen/Auth%20Screens/login_screen.dart';
import 'package:soil_doc/screen/welcome_screen.dart';
import 'package:soil_doc/services/get_user_data.dart';
import 'package:soil_doc/widget/buttons.dart';
import 'package:soil_doc/widget/my_input_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
    with SingleTickerProviderStateMixin {
  // form key
  final _formKey = GlobalKey<FormState>();

  // Editing Controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  // Firebase Auth
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;
  String errorMessage = '';

  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    )..addListener(() {
        setState(() {});
      });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: kGreenColorShade.withOpacity(0.3),
          gradient: kLinearGradient,
        ),
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height,
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: _opacity.value,
                    child: Transform.scale(
                      scale: _transform.value,
                      child: Container(
                        width: size.width * .9,
                        height: size.width * 1.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 90,
                            ),
                          ],
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 15),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent.withOpacity(.7),
                                ),
                              ),
                              SizedBox(height: 25),
                              MyInputField(
                                textInputType: TextInputType.name,
                                icon: FontAwesomeIcons.user,
                                hintText: 'Name',
                                controller: usernameController,
                                onChange: (username) {
                                  usernameController.value = usernameController
                                      .value
                                      .copyWith(text: username);
                                },
                                textInputAction: TextInputAction.next,
                                validator: cityValidator,
                              ),
                              MyInputField(
                                textInputType: TextInputType.emailAddress,
                                icon: FontAwesomeIcons.envelope,
                                hintText: 'Email',
                                controller: emailController,
                                onChange: (email) {
                                  emailController.value = emailController.value
                                      .copyWith(text: email);
                                },
                                textInputAction: TextInputAction.next,
                                validator: emailValidator,
                              ),
                              MyInputField(
                                textInputType: TextInputType.visiblePassword,
                                icon: Icons.location_city,
                                hintText: 'City (e.g. Sangli)',
                                controller: cityController,
                                onChange: (city) {
                                  cityController.value =
                                      cityController.value.copyWith(text: city);
                                },
                                textInputAction: TextInputAction.next,
                                validator: cityValidator,
                              ),
                              MyInputField(
                                textInputType: TextInputType.visiblePassword,
                                icon: Icons.lock_outline,
                                hintText: 'Password',
                                controller: passwordController,
                                onChange: (password) {
                                  passwordController.value = passwordController
                                      .value
                                      .copyWith(text: password);
                                },
                                textInputAction: TextInputAction.next,
                                validator: passwordValidator,
                              ),
                              MyInputField(
                                textInputType: TextInputType.visiblePassword,
                                icon: Icons.lock_outline,
                                hintText: 'Confirm Password',
                                controller: cPasswordController,
                                onChange: (cPassword) {
                                  cPasswordController.value =
                                      cPasswordController.value
                                          .copyWith(text: cPassword);
                                },
                                textInputAction: TextInputAction.done,
                                validator: (value) {
                                  if (value != passwordController.text) {
                                    return "Password and confirm password doesn't match";
                                  }
                                },
                              ),
                              SizedBox(height: 15),
                              buttons(
                                'SIGN UP',
                                2.6,
                                () async {
                                  // HapticFeedback.lightImpact();
                                  await signUp();
                                  FocusScope.of(context).unfocus();
                                },
                                context,
                              ),
                              SizedBox(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Already have an account? Login here',
                                  style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signUp() async {
    if (_formKey.currentState!.validate()) {
      try {
        setState(() {
          showSpinner = true;
        });
        await _auth
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .then(
              (value) => {
                sendDetailsToFireStore(),
              },
            );
      } on FirebaseAuthException catch (error) {
        print(error.code);
        setState(() {
          showSpinner = false;
        });
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "email-already-in-use":
            errorMessage = "User with this email address already exists.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage);
      }
    }
  }

  sendDetailsToFireStore() async {
    // calling firestore
    // calling user model
    // sending data

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    await firebaseFirestore.collection('users').doc(user!.uid).set({
      "email": user.email,
      "password": passwordController.text,
      "name": usernameController.text,
      "uid": user.uid,
      "city": cityController.text,
      "isAdmin": false,
    });

    Fluttertoast.showToast(msg: 'Account created successfully');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => GetUserData(),
      ),
    );
  }
}
