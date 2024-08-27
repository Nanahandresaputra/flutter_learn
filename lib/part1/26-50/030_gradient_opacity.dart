import 'package:flutter/material.dart';

class GradientOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Gradient Opacity',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              image: AssetImage('assets/img-2.jpg'),
              width: MediaQuery.of(context).size.width * 0.9,
            ),
          ),
        ),
      ),
    );
  }
}
