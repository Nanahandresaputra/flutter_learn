import 'package:flutter/material.dart';
import 'package:flutter_learn/http_request/get_user_model.dart';

class HttpReqGetLearn extends StatefulWidget {
  @override
  _HttpReqGetLearnState createState() => _HttpReqGetLearnState();
}

class _HttpReqGetLearnState extends State<HttpReqGetLearn> {
  GetUserModel? getUserModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Http Req Get Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              getUserModel != null
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              image: NetworkImage('${getUserModel?.avatar}'),
                              height: 100,
                            ),
                          ),
                          Text(
                            '${getUserModel?.firstName} ${getUserModel?.lastName}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(
                            '${getUserModel?.email}',
                            style: TextStyle(color: Colors.black26),
                          ),
                        ],
                      ),
                    )
                  : Text(
                      'Data Not Found',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
              ElevatedButton(
                  onPressed: () {
                    GetUserModel.connectToApi('6').then((value) {
                      setState(() {
                        getUserModel = value;
                      });
                    });
                  },
                  child: Text('Get Data'))
            ],
          ),
        ),
      ),
    );
  }
}
