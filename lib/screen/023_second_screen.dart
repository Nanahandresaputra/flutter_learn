import 'package:flutter/material.dart';

class SecondScreen23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade400,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text(
            'Hero & ClipRRect widget learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Hero(
            tag: 'Picture',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Container(
                margin: EdgeInsets.all(4),
                child: Image(
                  image: AssetImage('assets/img-2.jpg'),
                ),
              ),
            ),
          ),
        ));
  }
}
