import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatelessWidget {
  final Function updateUi;
  final double size;
  const Maps({Key? key, required this.size, required this.updateUi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressCon = TextEditingController();

    void _check() {
      if (addressCon.text.isEmpty) {
        updateUi("");
      }
      updateUi(addressCon.text);
    }

    return Stack(children: [
      Container(
        margin: EdgeInsets.only(top: size * 0.38),
        height: size * 0.57,
        decoration: BoxDecoration(),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(33.57673785725179, 73.0629142031694), zoom: 15),
            zoomControlsEnabled: false,
            markers: ,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: EdgeInsets.only(top: 5),
          margin: EdgeInsets.only(top: size * 0.41),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextField(
            controller: addressCon,
            onSubmitted: (_) => _check(),
            maxLines: 1,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.location_pin,
                  color: Colors.black,
                ),
                hintText: 'Enter your address',
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ),
    ]);
  }
}
