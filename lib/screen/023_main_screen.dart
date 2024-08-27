import 'package:flutter/material.dart';
import 'package:flutter_learn/screen/023_second_screen.dart';

class MainScreen23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          title: Text(
            'Hero & ClipRRect widget learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen23();
            }));
          },
          child: Hero(
            tag: 'Picture',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                margin: EdgeInsets.all(4),
                child: Image(
                  image: AssetImage('assets/img-2.jpg'),
                  height: 70,
                  width: 100,
                ),
              ),
            ),
          ),
        ));
  }
}
