import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioPlayer();

  void playMusic(int audioNumber) async {
    await player.play(AssetSource('note$audioNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button2(
              kelgenTus: Colors.red,
              kelgenFunkciya: () {
                playMusic(1);
              },
            ),
            button2(
              kelgenTus: Colors.orange,
              kelgenFunkciya: () {
                playMusic(2);
              },
            ),
            button2(
              kelgenTus: Colors.yellow,
              kelgenFunkciya: () {
                playMusic(3);
              },
            ),
            button2(
              kelgenTus: Colors.green,
              kelgenFunkciya: () {
                playMusic(4);
              },
            ),
            button2(
              kelgenTus: Colors.greenAccent,
              kelgenFunkciya: () {
                playMusic(5);
              },
            ),
            button2(
              kelgenTus: Colors.blue,
              kelgenFunkciya: () {
                playMusic(6);
              },
            ),
            button2(
              kelgenTus: Colors.purple,
              kelgenFunkciya: () {
                playMusic(7);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget button2({
    required Color kelgenTus,
    required Function() kelgenFunkciya,
  }) {
    return Expanded(
      child: InkWell(
        onTap: kelgenFunkciya,
        child: Container(
          color: kelgenTus,
        ),
      ),
    );
  }

  /* Expanded button(Color kelgenTus, Function() kelgenFunkciya) {
    return Expanded(
      child: TextButton(
        onPressed: kelgenFunkciya,
        child: Container(
          color: kelgenTus,
        ),
      ),
    );
  } */
}
