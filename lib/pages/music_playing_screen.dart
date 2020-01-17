import 'package:flutter/material.dart';

class MusicPlayScreen extends StatefulWidget {
  @override
  _MusicPlayScreenState createState() => _MusicPlayScreenState();
}

class _MusicPlayScreenState extends State<MusicPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.album),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
