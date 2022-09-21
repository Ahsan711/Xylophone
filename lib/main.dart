import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());
void playAudio(int val) {
  Audio audio = Audio.load('assets/note$val.wav');
  audio.play();
}

Expanded tiles(Color color, int soundNum) {
  return Expanded(
    child: TextButton(
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(color)),
      onPressed: () {
        playAudio(soundNum);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tiles(Colors.red, 1),
              tiles(Colors.orange, 2),
              tiles(Colors.yellow, 3),
              tiles(Colors.green, 4),
              tiles(Colors.teal, 5),
              tiles(Colors.blue, 6),
              tiles(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
