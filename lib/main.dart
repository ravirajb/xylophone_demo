import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int wavNumber) {
    final player = AudioCache();
    player.play('note$wavNumber.wav');
  }

  Widget buildKey(int wayNumber, MaterialColor materialColor) {
    return Expanded(
        child: ButtonTheme(
            minWidth: double.infinity,
            buttonColor: materialColor,
            child: RaisedButton(
              child: Text('note-$wayNumber'),
              onPressed: () {
                playSound(wayNumber);
              },
            )));
  }

  @override
  Widget build(BuildContext context) {
    // nouns.take(50).forEach(print);

    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          buildKey(1, Colors.yellow),
          buildKey(2, Colors.green),
          buildKey(3, Colors.blue),
          buildKey(4, Colors.red),
          buildKey(5, Colors.purple),
          buildKey(6, Colors.indigo),
          buildKey(7, Colors.orange),
        ]),
      ),
    ));
  }
}
