// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/models/user_models.dart';
import 'package:soil_doc/screen/home_page.dart';
import 'package:soil_doc/screen/loading.dart';

class GetUserData extends StatelessWidget {
  const GetUserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser!.uid.toString();
    String documentId = uid;
    print(auth.currentUser?.email);
    print('GetUserData');

    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<DocumentSnapshot>(
        future: users.doc(documentId).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Something went wrong, Please try again'),
            );
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return Center(
              child: CircularProgressIndicator(
                color: kGreenColorShade,
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            UserModel.name = data['name'].toString();
            UserModel.email = data['email'].toString();
            UserModel.password = data['password'].toString();
            UserModel.uid = data['uid'].toString();
            UserModel.city = data['city'].toString();

            return LoadingScreen();
          }
          return Center(
            child: CircularProgressIndicator(
              color: kGreenColorShade,
            ),
          );
        },
      ),
    );
  }
}
