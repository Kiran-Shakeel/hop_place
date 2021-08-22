import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hop_place_screens/widgets/BottomNav.dart';
import 'package:hop_place_screens/widgets/Map.dart';
import 'package:hop_place_screens/widgets/UpperButtons.dart';
import 'package:hop_place_screens/widgets/UpperContainer.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String s = "Where's you place located?";

  bool check = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    var mediaQuery = MediaQuery.of(context);

    var size = mediaQuery.size.height - mediaQuery.padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            UpperContainer(
              size: size * 0.4,
              flag: true,
            ),
            UpperButtons(selcolor: Colors.white),
            Positioned(
                left: 20,
                top: size * 0.3,
                bottom: 10,
                child: Text(
                  s,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
            Maps(
              size: size,
              updateUi: _updateUi,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        check: check,
      ),
    );
  }

  void _updateUi(String text) {
    setState(() {
      print('object');
      if (text == "") {
        check = false;
        s = "Where's you place located?";
      } else {
        check = true;
        s = "Is the pin in the right spot?";
      }
    });
  }
}
