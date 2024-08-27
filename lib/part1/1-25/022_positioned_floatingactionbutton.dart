import 'package:flutter/material.dart';

class PositionedFloatingActionButtonLearn extends StatelessWidget {
  double smallCircle(BuildContext context) {
    return MediaQuery.of(context).size.width * 2 / 3;
  }

  double bigCircle(BuildContext context) {
    return MediaQuery.of(context).size.width * 7 / 8;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
                top: -smallCircle(context) / 3,
                right: -smallCircle(context) / 3,
                child: Container(
                  width: smallCircle(context),
                  height: smallCircle(context),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade900, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: -bigCircle(context) / 4,
                left: -bigCircle(context) / 4,
                child: Container(
                  child: Center(
                    child: Text(
                      'login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Pacifico'),
                    ),
                  ),
                  width: bigCircle(context),
                  height: bigCircle(context),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade900, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                bottom: -bigCircle(context) / 2,
                right: -bigCircle(context) / 2,
                child: Container(
                  width: bigCircle(context),
                  height: bigCircle(context),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 300, 10, 20),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.blue.shade900,
                              ),
                              labelText: 'Email: ',
                              labelStyle:
                                  TextStyle(color: Colors.blue.shade900),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue.shade900))),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.key,
                                color: Colors.blue.shade900,
                              ),
                              labelText: 'Password: ',
                              labelStyle:
                                  TextStyle(color: Colors.blue.shade900),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue.shade900))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      'Forgot Password',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 30, 10, 20),
                      child: ElevatedButton(
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
