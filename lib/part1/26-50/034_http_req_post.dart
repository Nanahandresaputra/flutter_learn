import 'package:flutter/material.dart';
import 'package:flutter_learn/folder_part1/http_request/post_result_model.dart';

class HttpRequestLearn extends StatefulWidget {
  @override
  _HttpRequestLearnState createState() => _HttpRequestLearnState();
}

class _HttpRequestLearnState extends State<HttpRequestLearn> {
  PostResultModel? postResultModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Http Request Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(postResultModel != null
                  ? '${postResultModel?.id} - ${postResultModel?.name} - ${postResultModel?.job} - ${postResultModel?.createdAt}'
                  : 'Not Found'),
              ElevatedButton(
                  onPressed: () {
                    PostResultModel.connectApi('Nana', 'Frontend Dev')
                        .then((value) {
                      setState(() {
                        postResultModel = value;
                      });
                    });
                  },
                  child: Text('Post'))
            ],
          ),
        ),
      ),
    );
  }
}
