import 'package:flutter/material.dart';
import 'package:hop_place_screens/widgets/BottomNav.dart';
import 'package:hop_place_screens/widgets/SettingText.dart';
import 'package:hop_place_screens/widgets/UpperButtons.dart';

class Place extends StatelessWidget {
  const Place({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var size = mediaQuery.size.height - mediaQuery.padding.top;
    String s = "Let's give your place a name";

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: size * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://images.unsplash.com/photo-1575403071235-5dcd06cbf169?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                  fit: BoxFit.cover,
                ),
              ),
              UpperButtons(
                Selcolor: Colors.black,
              ),
              SettingText(size: size * 0.46, s: s),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20),
                height: size * 0.32,
                margin: EdgeInsets.only(top: size * 0.55),
                child: TextFormField(
                  maxLength: 50,
                  maxLines: 4,
                  decoration: InputDecoration(
                      hoverColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      hintText:
                          'Welcoming 1-Bedroom bed and breakfast in Minneapolis',
                      hintStyle: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
