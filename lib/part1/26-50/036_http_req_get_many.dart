import 'package:flutter/material.dart';
import 'package:flutter_learn/folder_part1/http_request/get_many_data.dart';

class HttpReqGetManyLearn extends StatefulWidget {
  @override
  _HttpReqGetManyLearnState createState() => _HttpReqGetManyLearnState();
}

class _HttpReqGetManyLearnState extends State<HttpReqGetManyLearn> {
  List<Widget> listData = [];

  @override
  void initState() {
    super.initState();

    GetManyData.connectApi('2').then((value) {
      if (value.length > 0) {
        for (int i = 0; i < value.length; i++) {
          setState(() {
            listData.add(Card(
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: NetworkImage('${value[i].avatar}'),
                        height: 75,
                        width: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '${value[i].name}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${value[i].email}',
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ));
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Http Req Get Many data',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: listData.length > 0
              ? ListView(
                  children: listData,
                )
              : Center(
                  child: Text(
                    'Data Not Found',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
        ),
      ),
    );
  }
}
