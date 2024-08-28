import 'package:flutter/material.dart';

class ClipPathLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'ClipPath Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              image: AssetImage('assets/img-2.jpg'),
              // width: 300,
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
