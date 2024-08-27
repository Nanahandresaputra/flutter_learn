import 'package:flutter/material.dart';

class AppbarWithCustonHeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      child: Text(
                        'Appbar with Custom height',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )),
              ],
            ),
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
