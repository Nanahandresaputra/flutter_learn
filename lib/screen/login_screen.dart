import 'package:flutter/material.dart';
import 'main_screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text('Welcome to Navigasi Multiple Scren Learn',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ),
              ElevatedButton(
                child: Text('LOGIN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
