import 'package:flutter/material.dart';

class MediaQueryLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPageMediaQuery(),
    );
  }
}

class MainPageMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MediaQuery Learn',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      )
    ];
  }
}
