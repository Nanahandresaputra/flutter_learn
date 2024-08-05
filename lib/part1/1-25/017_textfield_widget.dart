import 'package:flutter/material.dart';

class TextFieldWidgetLearn extends StatefulWidget {
  @override
  _TextFieldWidgetLearnState createState() => _TextFieldWidgetLearnState();
}

class _TextFieldWidgetLearnState extends State<TextFieldWidgetLearn> {
  TextEditingController _controller = TextEditingController(text: 'Nilai awal');
  TextEditingController _controllerPw =
      TextEditingController(text: 'Nilai awal');

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
            'TextField Widget Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green.shade600,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                maxLength: 7,
                controller: _controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                controller: _controllerPw,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Text(
              _controller.text,
            ),
            Text(
              _controllerPw.text,
            ),
          ],
        ),
      ),
    );
  }
}
