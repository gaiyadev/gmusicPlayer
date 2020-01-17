import 'package:flutter/material.dart';
import 'package:gmusic_player/pages/library_screen.dart';
import 'package:gmusic_player/pages/music_playing_screen.dart';
import 'package:gmusic_player/pages/search_screen.dart';
import 'package:gmusic_player/pages/settings_screen.dart';
import 'package:gmusic_player/utilities/app_drawer.dart';
import 'package:gmusic_player/utilities/style.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  Widget changePage(int currentIndex) {
    switch (_currentIndex) {
      case 0:
        return MusicPlayScreen();
      case 1:
        return SearchScreen();
      case 2:
        return MusicLibrary();
      case 3:
        return SettingsScreen();
        break;
      default:
        return MusicPlayScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0.0,
        child: AppDrawer(),
      ),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF496072),
        titleSpacing: 2.0,
        title: Center(
          child: Text(
            'GMusic',
            style: kAppBarTitle,
//
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              //get to user account
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 0.0, 0.0, 0.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: changePage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_play,
            ),
            title: Text(
              'Playing',
              style: kBottomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text(
              'Search',
              style: kBottomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.queue_music,
            ),
            title: Text(
              'Library',
              style: kBottomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text(
              'Settings',
              style: kBottomTextStyle,
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.pink,
        elevation: 8,
        selectedFontSize: 20.0,
        backgroundColor: Color(0xFFB6C3CB),
        selectedLabelStyle: TextStyle(
          color: Color(0xff436072),
        ),
      ),
      //floatingActionButton: ShuffleButton(),
    );
  }
}
