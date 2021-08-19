import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hop_place_screens/widgets/BottomNav.dart';
import 'package:hop_place_screens/widgets/Map.dart';
import 'package:hop_place_screens/widgets/SettingText.dart';
import 'package:hop_place_screens/widgets/UpperButtons.dart';
import 'package:hop_place_screens/widgets/UpperContainer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  static String s = "Where's your place located?";
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var size = mediaQuery.size.height - mediaQuery.padding.top;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              UpperContainer(
                size: size * 0.4,
                flag: true,
              ),
              UpperButtons(Selcolor: Colors.white),
              SettingText(size: size * 0.3, s: s),
              Maps(size: size),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
