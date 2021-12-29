import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sayi) {
    final player = AudioCache();
    player.play("note$sayi.wav");
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
        child: InkWell(
      onTap: () {
        playSound(soundNumber);
      },
      child: Container(color: color),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.pink, soundNumber: 7),
            ],
          )),
        ),
      ),
    );
  }
}
