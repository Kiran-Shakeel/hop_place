import 'package:flutter/material.dart';
import 'package:hop_place_screens/pages/HomePage.dart';

import 'package:hop_place_screens/pages/Place.dart';
import 'package:hop_place_screens/utils/routes.dart';

void main() {
  runApp(MyApp());
}

const kGoogleApiKey = "AIzaSyCLJMMGM-wB1GZ-ta-YwXkVUWs3_GBGVQg";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hop Place',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.placeRoute: (context) => Place(),
      },
    );
  }
}
