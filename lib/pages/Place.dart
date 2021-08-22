import 'package:flutter/material.dart';
import 'package:hop_place_screens/widgets/BottomNav.dart';
import 'package:hop_place_screens/widgets/SettingText.dart';
import 'package:hop_place_screens/widgets/UpperButtons.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class Place extends StatefulWidget {
  const Place({Key? key}) : super(key: key);

  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('asset/videos/location.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    var mediaQuery = MediaQuery.of(context);

    var size = mediaQuery.size.height - mediaQuery.padding.top;
    String s = "Let's give your place a name";

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size * 0.6,
              width: MediaQuery.of(context).size.width,
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
            UpperButtons(
              selcolor: Colors.black,
            ),
            Positioned(
              top: size * 0.39,
              left: 30,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.4),
                child: IconButton(
                  icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                ),
              ),
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
              height: size * 0.4,
              margin: EdgeInsets.only(top: size * 0.55),
            ),
            Container(
              margin: EdgeInsets.only(top: size * 0.58, left: 20, right: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                textAlign: TextAlign.start,
                showCursor: false,
                maxLength: 50,
                maxLines: 4,
                decoration: InputDecoration(
                    hoverColor: Colors.black,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    helperMaxLines: 20,
                    hintText:
                        'Welcoming 1-\nBedroom bed and breakfast in \nMinneapolis',
                    hintStyle: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        check: false,
      ),
    );
  }
}
