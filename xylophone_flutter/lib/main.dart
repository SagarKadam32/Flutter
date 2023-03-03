import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.setSource(AssetSource('note1.wav'));
                player.setVolume(8.0);
                player.resume();
                player.play(AssetSource('note1.wav'));
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
