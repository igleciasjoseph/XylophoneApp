import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num) {
    final player = new AudioCache();
    player.play('note$num.wav');
  }

   Expanded xyloRow(Color colorProperty, int number) {
    return Expanded(
      child: FlatButton(
        color: colorProperty,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloRow(Colors.red, 1),
              xyloRow(Colors.orange, 2),
              xyloRow(Colors.yellow, 3),
              xyloRow(Colors.green, 4),
              xyloRow(Colors.blue, 5),
              xyloRow(Colors.indigo, 6),
              xyloRow(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
