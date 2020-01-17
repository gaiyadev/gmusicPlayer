import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
//        DrawerHeader(
//          child: CircleAvatar(
//            radius: 10.0,
//            backgroundImage: AssetImage(
//              'images/passport.jpg',
//            ),
//          ),
//          decoration: BoxDecoration(
//            color: Colors.blue,
//          ),
//        ),
        SizedBox(
          height: 100.0,
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.person_add,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Sign in',
              ),
            ],
          ), //Text('Help'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.call,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Call',
              ),
            ],
          ), //Text('Help'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.apps,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Theme',
              ),
            ],
          ), //Text('Help'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.border_color,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Review',
              ),
            ],
          ), //Text('Help'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 170.0,
            child: Divider(
              height: 90.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80.0, 0.0, 10.0, 10.0),
          child: Row(
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.equalizer,
                ),
                onTap: () {
                  print('fd');
                  //nav to equilizer
                },
              ),
              SizedBox(
                width: 100.0,
              ),
              GestureDetector(
                child: Icon(
                  Icons.account_circle,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
