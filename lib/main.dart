import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(SoundBoardApp());

class SoundBoardApp extends StatefulWidget {
  @override
  _SoundBoardAppState createState() => _SoundBoardAppState();
}

class _SoundBoardAppState extends State<SoundBoardApp> {
  final List<String> fileName = [
    "GodofWarTheme",
    "TheVengefulSpartan",
    "BattleintheJungle",
    "DevilJinEnding",
    "GameOver",
    "TheTwoThronesCh1",
    "WorldClear",
    "TokyoGhoulUnravel"
  ];

  final List<String> soundName = [
    "God of War Theme",
    "The Vengeful Spartan",
    "Battle in the Jungle",
    "Devil Jin's Ending",
    "Game Over",
    "The Two Thrones Ch 1",
    "World Clear",
    "Tokyo Ghoul Unravel"
  ];

  static var newPlayer = new AudioPlayer();
  static var player1 = new AudioCache(fixedPlayer: newPlayer);

  Widget buildBoard(
      {String name, Color colorName, String ext = ".wav", int num}) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: FlatButton(
        child: Text(name),
        onPressed: () {
          newPlayer.stop();
          player1.play(fileName[num] + ".wav");
        },
      ),
      color: colorName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sound Board",
      home: SafeArea(
        child: Scaffold(
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              buildBoard(
                  name: soundName[0], colorName: Colors.teal[900], num: 0),
              buildBoard(
                  name: soundName[1], colorName: Colors.teal[800], num: 1),
              buildBoard(
                  name: soundName[2], colorName: Colors.teal[700], num: 2),
              buildBoard(
                  name: soundName[3], colorName: Colors.teal[600], num: 3),
              buildBoard(
                  name: soundName[4], colorName: Colors.teal[400], num: 4),
              buildBoard(
                  name: soundName[5], colorName: Colors.teal[300], num: 5),
              buildBoard(
                  name: soundName[6], colorName: Colors.teal[200], num: 6),
              buildBoard(
                  name: soundName[7], colorName: Colors.teal[100], num: 7),
              Container(
                padding: const EdgeInsets.all(8),
                child: FlatButton(
                  child: Text("Stop"),
                  onPressed: () {
                    newPlayer.stop();
                  },
                ),
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
