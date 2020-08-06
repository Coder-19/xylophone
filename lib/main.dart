import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // the function below is used to play different sounds whenever it is called
  void playSound(int soundNumber) {
    // creating an object player of the class AudioCache
    //  present in the file audio_cache.dart
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  // the function below used to create the expanded
  // flat button each time the function is called
  Expanded buildKey({Color newColor, int soundFileNumber}) {
    return Expanded(
      child: FlatButton(
        color: newColor,
        onPressed: () {
          playSound(soundFileNumber);
        },
        child: null,
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //  calling the function buildKey to build the different
                //  functions
                buildKey(
                  newColor: Colors.purple,
                  soundFileNumber: 1,
                ),
                buildKey(
                  newColor: Colors.indigo,
                  soundFileNumber: 2,
                ),
                buildKey(
                  newColor: Colors.blue,
                  soundFileNumber: 3,
                ),
                buildKey(
                  newColor: Colors.green,
                  soundFileNumber: 4,
                ),
                buildKey(
                  newColor: Colors.yellow,
                  soundFileNumber: 5,
                ),
                buildKey(
                  newColor: Colors.orange,
                  soundFileNumber: 6,
                ),
                buildKey(
                  newColor: Colors.red,
                  soundFileNumber: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
