import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildNote({int keyNote, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$keyNote.wav');
        },
        color: color,
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
              buildNote(keyNote: 1, color: Colors.red),
              buildNote(keyNote: 2, color: Colors.orange),
              buildNote(keyNote: 3, color: Colors.yellow),
              buildNote(keyNote: 4, color: Colors.green),
              buildNote(keyNote: 5, color: Colors.blue),
              buildNote(keyNote: 6, color: Colors.indigo),
              buildNote(keyNote: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
