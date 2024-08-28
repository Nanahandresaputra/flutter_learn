import 'package:flutter/material.dart';

class FontFeatureLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Font Feature Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Contoh 1 (Tanpa apapun)',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Contoh 1/2 (small caps & frac)',
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
