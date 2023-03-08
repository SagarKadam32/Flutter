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
          child: Container(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note1.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note1.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red, // Background Color
                  ),
                  child: Text(''),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note2.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note2.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange, // Background Color
                  ),
                  child: Text(''),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note3.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note3.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow, // Background Color
                  ),
                  child: Text(''),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note4.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note4.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green, // Background Color
                  ),
                  child: Text(''),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note5.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note5.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade800, // Background Color
                  ),
                  child: Text(''),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note6.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note6.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // Background Color
                  ),
                  child: Text(''),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note7.wav'));
                    player.setVolume(8.0);
                    player.resume();
                    player.play(AssetSource('note7.wav'));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple, // Background Color
                  ),
                  child: Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
