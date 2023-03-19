import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(music());
  
}
class music extends StatelessWidget {

  void play(int musicNumber){
    final player=AudioPlayer();
    player.play(AssetSource('music-${musicNumber}.mp3'));
  }

  Expanded myButton(int musicNumber,Color textColor,String musicName){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),

          onPressed: () {
            play(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(Icons.music_note,
                color: textColor,),
                SizedBox(
                  width: 20.0,
                ),

                Text(
                  musicName,
                  style: TextStyle(
                      color: textColor,
                          fontSize: 20.0,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text(
            'Music App',

          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1,Colors.red,"Samsung Galaxy"),
            myButton(2,Colors.indigo,"Samsung Not"),
            myButton(3,Colors.black,"Nokia"),
            myButton(4,Colors.deepPurple,"iPhone11"),
            myButton(5,Colors.pink,"WhatsApp"),
            myButton(6,Colors.deepOrange,"Samsung S7"),
            myButton(7,Colors.teal,"iPhone 6"),

          ],
        ),
      ),
    );
  }
}

