import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';

class ScannQrLearn extends StatefulWidget {
  const ScannQrLearn({Key? key}) : super(key: key);

  @override
  _ScannQrLearnState createState() => _ScannQrLearnState();
}

class _ScannQrLearnState extends State<ScannQrLearn> {
  String text = 'Result';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Scan Qr Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await Permission.camera.request();
                    text = await scanner.scan() ?? '';
                    setState(() {});
                  },
                  child: Text('Scan Qr'))
            ],
          ),
        ),
      ),
    );
  }
}
