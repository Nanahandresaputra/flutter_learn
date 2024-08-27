import 'package:flutter/material.dart';

class TabbarTampilanLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      labelColor: Colors.white,
      indicator: BoxDecoration(
          color: Colors.blue,
          border: Border(top: BorderSide(color: Colors.white, width: 5))),
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
          icon: Icon(
            Icons.computer,
            color: Colors.white,
          ),
          text: 'Computer',
        ),
      ],
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: PreferredSize(
                    preferredSize:
                        Size.fromHeight(myTabBar.preferredSize.height),
                    child: Container(
                      color: Colors.blue.shade900,
                      child: myTabBar,
                    )),
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
                ],
              ),
            )));
  }
}
