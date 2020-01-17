import 'package:flutter/material.dart';
import 'package:gmusic_player/models/library_model.dart';
import 'package:gmusic_player/utilities/style.dart';

class MusicLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8.0, 0.0, 8.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Library',
                  style: kLibraryTitleText,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Divider(
            height: 10.0,
            //thickness: 1.0,
          ),
          GestureDetector(
            onTap: () {
              print('playlist');
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].playlist,
                    style: kLibraryTextStyle,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 50.0,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              print('artist');
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].artist,
                    style: kLibraryTextStyle,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 50.0,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              print('album');
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].albums,
                    style: kLibraryTextStyle,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 50.0,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              print('songs');
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].songs,
                    style: kLibraryTextStyle,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 50.0,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 5.0,
          ),
          SizedBox(
            height: 7.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 1.0, 0.0, 8.0),
                child: Text(
                  'Recently Added',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontFamily: 'SourceSansPro',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
