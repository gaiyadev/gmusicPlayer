import 'package:flutter/material.dart';

class ShuffleButton extends StatelessWidget {
  const ShuffleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverColor: Colors.lightBlueAccent,
      onPressed: () {
        print('sufflr pressed');
      },
      child: Icon(Icons.shuffle),
    );
  }
}
