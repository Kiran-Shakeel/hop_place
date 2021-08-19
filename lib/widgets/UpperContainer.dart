import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  final double size;
  final bool flag;
  const UpperContainer({Key? key, required this.size, required this.flag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.purple])),
      

            );
  }
}
