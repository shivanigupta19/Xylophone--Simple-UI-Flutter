import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final AudioCache player = AudioCache();


final List sounds = [
    "note1.wav",
    "note2.wav",
    "note3.wav",
    "note4.wav",
    "note5.wav",
    "note6.wav",
    "note7.wav",
    "note8.wav",
  ];


class XylophonePlayer extends StatefulWidget {
  @override
  _XylophonePlayerState createState() => _XylophonePlayerState();
}

class _XylophonePlayerState extends State<XylophonePlayer> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            XylophoneBar(
              height: height * 0.9,
              text: "A",
              note: 0,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.85,
              text: "B",
              note: 1,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.80,
              text: "C",
              note: 2,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.75,
              text: "D",
              note: 3,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.70,
              text: "E",
              note: 4,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.65,
              text: "F",
              note: 5,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.60,
              text: "G",
              note: 6,
            ),

            SizedBox(width: 10,),

            XylophoneBar(
              height: height * 0.55,
              text: "H",
              note: 7,
            ),

          ],
        ),
      ),
    );
  }
}

class XylophoneBar extends StatelessWidget {
  final height;
  final text;
  final Color color;
  final int note;

  XylophoneBar({this.height, this.text, this.color, this.note});

  play(note) async {
    player.play(sounds[note]);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        play(note);
      },
      child: Container(
        height: height,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purple, Colors.deepPurple,Colors.blue,Colors.green ,
               Colors.greenAccent ,Colors.yellow,Colors.orange , Colors.red])
        ),
        child: Text(text),
      ),
    );
  }
}