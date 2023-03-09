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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(1);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 0),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(2);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(3);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(4);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(5);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            Colors.green.shade800, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(6);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(7);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple, // Background Color
                      ),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
