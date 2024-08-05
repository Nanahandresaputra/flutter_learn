import 'package:flutter/material.dart';

class StackAndAlignLearn extends StatefulWidget {
  @override
  _StackAndAlignLearnState createState() => _StackAndAlignLearnState();
}

class _StackAndAlignLearnState extends State<StackAndAlignLearn> {
  List<Widget> listWidget = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 20; i++) {
      listWidget.add(Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.red.shade900, width: 2)),
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.all(10),
        child: Text(
          'Data ke ${i + 1}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Stack and Align Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                    child: Container(
                  color: Colors.purple[50],
                )),
                Flexible(
                    child: Container(
                  color: Colors.red[50],
                )),
              ],
            ),
            ListView(
              children: listWidget,
            ),
            Align(
              alignment: Alignment(0, 0.75),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Button',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.purple.shade900),
              ),
            )
          ],
        ),
      ),
    );
  }
}
