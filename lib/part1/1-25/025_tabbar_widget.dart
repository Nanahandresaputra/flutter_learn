import 'package:flutter/material.dart';

class TabbarWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.purple.shade900,
                  unselectedLabelColor: Colors.blue[100],
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                      text: 'Comment',
                    ),
                    Tab(
                      child: Image(
                        image: AssetImage('assets/img-2.jpg'),
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.computer,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      text: 'New',
                    )
                  ],
                ),
                title:
                    Text('TabBar Learn', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.blue,
              ),
              body: TabBarView(
                children: <Widget>[
                  Center(
                    child: Text('Tab1'),
                  ),
                  Center(
                    child: Text('Tab2'),
                  ),
                  Center(
                    child: Text('Tab3'),
                  ),
                  Center(
                    child: Text('Tab4'),
                  ),
                ],
              ),
            )));
  }
}
