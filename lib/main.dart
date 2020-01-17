import 'package:flutter/material.dart';
import 'package:gmusic_player/pages/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        accentColor: Colors.pink,
        scaffoldBackgroundColor: Color(0xFFB6C3CB),
        applyElevationOverlayColor: true,
        //primaryColorBrightness: Brightness.dark,
      ),
      home: MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreen(),
    );
  }
}
