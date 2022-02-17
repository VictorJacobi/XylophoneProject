import 'package:flutter/material.dart';
import'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Expanded buildKey(int number,{Color Mycolor}) {
 return Expanded(
   child: FlatButton(
     onPressed: () {
       final player = AudioCache();
       player.play('note$number.wav');
     },
     color: Mycolor,
   ),
 );
}

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'My Xylophone App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey( 1 , Mycolor: Colors.red),
              buildKey( 2 , Mycolor: Colors.lightGreen),
              buildKey( 3 , Mycolor: Colors.blue),
              buildKey( 4 , Mycolor: Colors.yellow),
              buildKey( 5 , Mycolor: Colors.orange),
              buildKey( 6 , Mycolor: Colors.purple),
              buildKey( 7 , Mycolor: Colors.teal),
            ],
          )
          ),
        ),
    );
  }
}
