import 'package:flutter/material.dart';
import 'package:hop_place_screens/utils/routes.dart';

class BottomNav extends StatelessWidget {
  final bool check;
  const BottomNav({Key? key, required this.check}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Back',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent))),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: check == false
                      ? MaterialStateProperty.all(Colors.grey)
                      : MaterialStateProperty.all(Colors.black)),
              onPressed: () => check == false
                  ? null
                  : Navigator.pushNamed(context, MyRoutes.placeRoute),
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
