import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded BuildKey({Color color, int soundNumber}) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundNumber.wav');
      },
    ));
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
              BuildKey(color: Colors.red, soundNumber: 1),
              BuildKey(color: Colors.orange, soundNumber: 2),
              BuildKey(color: Colors.yellow, soundNumber: 3),
              BuildKey(color: Colors.green, soundNumber: 4),
              BuildKey(color: Colors.teal, soundNumber: 5),
              BuildKey(color: Colors.blue, soundNumber: 6),
              BuildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
