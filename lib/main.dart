import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int soundNumber) {
    final player = AudioCache();
     player.play('note$soundNumber.wav');
  }

Expanded buildKey({Color color, int soundNumber}) {
    return 
          Expanded(
            child: Container(
              color: color,
              child: FlatButton(
                onPressed: () {
                  playSound(soundNumber);
                },
                ),
            ),
          );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              SizedBox(
            height: 10.0,
            ),
              buildKey(color: Colors.orange, soundNumber: 2),
              SizedBox(
            height: 10.0,
            ),
              buildKey(color: Colors.yellow, soundNumber: 3),
              SizedBox(
            height: 10.0,
            ),
              buildKey(color: Colors.green, soundNumber: 4),
              SizedBox(
            height: 10.0,
            ),
              buildKey(color: Colors.teal, soundNumber: 5),
              SizedBox(
            height: 10.0,
            ),
              buildKey(color: Colors.blue, soundNumber: 6),
              SizedBox(
            height: 10.0,
            ),
              buildKey(color: Colors.purple, soundNumber: 7),
              SizedBox(
            height: 10.0,
            ),

          
          ],
          ),
          
        ),
      ),
    );
  }
}

