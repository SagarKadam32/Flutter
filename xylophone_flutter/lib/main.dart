import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.setSource(AssetSource('note$soundNumber.wav'));
    player.setVolume(8.0);
    player.resume();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required int soundNumber, required Color keyColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style:
            TextButton.styleFrom(backgroundColor: keyColor // Background Color
                ),
        child: Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, keyColor: Colors.red),
              buildKey(soundNumber: 2, keyColor: Colors.orange),
              buildKey(soundNumber: 3, keyColor: Colors.yellow),
              buildKey(soundNumber: 4, keyColor: Colors.green),
              buildKey(soundNumber: 5, keyColor: Colors.green.shade800),
              buildKey(soundNumber: 6, keyColor: Colors.blue),
              buildKey(soundNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
