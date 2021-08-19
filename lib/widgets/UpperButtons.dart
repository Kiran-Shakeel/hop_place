import 'package:flutter/material.dart';

class UpperButtons extends StatelessWidget {
  final Color Selcolor;
  const UpperButtons({Key? key, required this.Selcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Selcolor.withOpacity(0.2),
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
                    MaterialStateProperty.all(Selcolor.withOpacity(0.2)),
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
