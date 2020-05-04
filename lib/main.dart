import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playaudio(int sound ){
    final player=AudioCache();
    player.play('note$sound.wav');
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('|--xylophone--|',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Galada',
            ),),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                   playaudio(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightGreenAccent,
                  onPressed: (){
                    playaudio(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: (){
                    playaudio(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: (){
                    playaudio(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: (){
                    playaudio(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.cyanAccent,
                  onPressed: (){
                    playaudio(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purpleAccent,
                  onPressed: (){
                    playaudio(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
