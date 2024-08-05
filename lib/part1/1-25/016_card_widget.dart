import 'package:flutter/material.dart';

class CardWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text(
            'Card Widget Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green.shade700,
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, 'Account Box'),
              buildCard(Icons.add_business_rounded, 'Store'),
              buildCard(Icons.adb, 'Android'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 7,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            child: Icon(
              iconData,
              color: Colors.green.shade600,
            ),
          ),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
