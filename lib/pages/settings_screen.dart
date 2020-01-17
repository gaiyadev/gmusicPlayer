import 'package:flutter/material.dart';
import 'package:gmusic_player/models/settings_model.dart';
import 'package:gmusic_player/utilities/style.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isTimerSwitched = false;
  bool _isResumeSwitched = true;
  bool _isPauseSwitched = false;
  bool _isLockSwitched = false;

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
                  'Settings',
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
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].timer,
                  style: kLibraryTextStyle,
                ),
                Switch(
                  onChanged: (val) => setState(() => _isTimerSwitched = val),
                  value: _isTimerSwitched,
                  activeColor: Colors.pink.shade500,
                ),
              ],
            ),
          ),
          Divider(
            height: 5.0,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].resume,
                  style: kLibraryTextStyle,
                ),
                Switch(
                  onChanged: (val) => setState(() => _isResumeSwitched = val),
                  value: _isResumeSwitched,
                  activeColor: Colors.pink.shade500,
                ),
              ],
            ),
          ),
          Divider(
            height: 5.0,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].pause,
                  style: kLibraryTextStyle,
                ),
                Switch(
                  onChanged: (val) => setState(() => _isPauseSwitched = val),
                  value: _isPauseSwitched,
                  activeColor: Colors.pink.shade500,
                ),
              ],
            ),
          ),
          Divider(
            height: 5.0,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].lockScreen,
                  style: kLibraryTextStyle,
                ),
                Switch(
                  onChanged: (val) => setState(() => _isLockSwitched = val),
                  value: _isLockSwitched,
                  activeColor: Colors.pink.shade500,
                ),
              ],
            ),
          ),
          Divider(
            height: 5.0,
          ),
          SizedBox(
            height: 7.0,
          ),
          ListTile(
            title: GestureDetector(
              onTap: () {
                print('exit');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].exit,
                    style: kLibraryTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.pink.shade500,
                      size: 29.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
