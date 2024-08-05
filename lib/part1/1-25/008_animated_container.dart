import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerLearn extends StatefulWidget {
  @override
  _AnimatedContainerLearnState createState() => _AnimatedContainerLearnState();
}

class _AnimatedContainerLearnState extends State<AnimatedContainerLearn> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Animated Container Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(random.nextInt(51).toDouble()),
                    bottomLeft: Radius.circular(random.nextInt(51).toDouble()),
                    topRight: Radius.circular(random.nextInt(51).toDouble()),
                    bottomRight:
                        Radius.circular(random.nextInt(51).toDouble())),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
              ),
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
