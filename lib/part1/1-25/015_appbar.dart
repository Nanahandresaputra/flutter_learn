import 'package:flutter/material.dart';

class AppbarPatternGradientLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            'AppBar Learn',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                )),
          ],
          backgroundColor: Colors.black,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pattern.png'),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat),
                gradient: LinearGradient(
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    colors: [Colors.purple.shade900, Colors.red])),
          ),
        ),
      ),
    );
  }
}
