import 'package:flutter/material.dart';

class UpperButtons extends StatelessWidget {
  final Color selcolor;
  const UpperButtons({Key? key, required this.selcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusSize = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.only(top: statusSize + 15, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: selcolor.withOpacity(0.2),
            child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                )),
          ),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(selcolor.withOpacity(0.2)),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: Text(
              'Help',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
