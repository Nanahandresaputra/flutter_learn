import 'package:flutter/material.dart';

class AnonymusMethodLearn extends StatefulWidget {
  const AnonymusMethodLearn({Key? key}) : super(key: key);

  @override
  _AnonymusMethodLearnState createState() => _AnonymusMethodLearnState();
}

class _AnonymusMethodLearnState extends State<AnonymusMethodLearn> {
  int intContent = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Anonymus method learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('tst ${intContent.toString()}',
                  style: TextStyle(color: Colors.blue, fontSize: 25)),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.blue[700]),
                    onPressed: () {
                      setState(() {
                        intContent = intContent + 1;
                      });
                    }, // anonymous method
                    child: Text(
                      'Tekan',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
