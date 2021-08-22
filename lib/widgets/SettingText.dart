import 'package:flutter/material.dart';

class SettingText extends StatelessWidget {
  final double size;
  final String s;
 
  const SettingText({Key? key, required this.size, required this.s})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 20,
        top: size,
        bottom: 10,
        child: Text(
          s,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
