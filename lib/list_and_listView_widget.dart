import 'package:flutter/material.dart';

class ListAndListViewWidgetLearn extends StatefulWidget {
  @override
  _ListAndListViewWidgetLearnState createState() =>
      _ListAndListViewWidgetLearnState();
}

class _ListAndListViewWidgetLearnState
    extends State<ListAndListViewWidgetLearn> {
  List<Widget> listWidgets = [];

  int _lengthValue = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'List & ListView Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      setState(() {
                        listWidgets.add(Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue)),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text(
                            'Data ke $_lengthValue',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ));

                        _lengthValue++;
                      });
                    },
                    child: Text(
                      '+ Add',
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      setState(() {
                        listWidgets.removeLast();
                        _lengthValue--;
                      });
                    },
                    child: Text(
                      '- Remove',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            Column(
              children: listWidgets,
            )
          ],
        ),
      ),
    );
  }
}
