import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerLearn extends StatefulWidget {
  @override
  _AudioPlayerLearnState createState() => _AudioPlayerLearnState();
}

class _AudioPlayerLearnState extends State<AudioPlayerLearn> {
  AudioPlayer audioPlayer = AudioPlayer();

  String durationAudito = '00:00:00';

  _AudioPlayerLearnState() {
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durationAudito = duration.toString();
      });
    });

    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playAudio(String url) async {
    audioPlayer.setSource(UrlSource(url)).then((value) {
      audioPlayer.play(UrlSource(url));
    });
  }

  void pauseAudio() async {
    await audioPlayer.pause();
  }

  void stopAudio() async {
    await audioPlayer.stop();
  }

  void resumeAudio() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'AudioPlayer Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    playAudio(
                        'https://freetouse.com/data/mp3/aylex-cinematic.mp3');
                  },
                  child: Text('Play')),
              ElevatedButton(
                  onPressed: () {
                    pauseAudio();
                  },
                  child: Text('Pause')),
              ElevatedButton(
                  onPressed: () {
                    stopAudio();
                  },
                  child: Text('Stop')),
              ElevatedButton(
                  onPressed: () {
                    resumeAudio();
                  },
                  child: Text('Resume')),
              Text(
                durationAudito,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
