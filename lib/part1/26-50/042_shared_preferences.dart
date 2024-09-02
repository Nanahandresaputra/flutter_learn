import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLearn extends StatefulWidget {
  @override
  _SharedPreferencesLearnState createState() => _SharedPreferencesLearnState();
}

class _SharedPreferencesLearnState extends State<SharedPreferencesLearn> {
  TextEditingController _textVal = TextEditingController(text: 'No name');
  bool _isOn = false;

  void saveData() async {
    final pref = await SharedPreferencesWithCache.create(
        cacheOptions: const SharedPreferencesWithCacheOptions(allowList: null));

    pref.setString('textVal', _textVal.text);
    pref.setBool('isOn', _isOn);
  }

  Future<String> loadText() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('textVal') ?? 'No name';
  }

  Future<bool> loadBool() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isOn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'SharedReferences Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              controller: _textVal,
            ),
            Switch(
                value: _isOn,
                onChanged: (val) {
                  setState(() {
                    _isOn = val;
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Save'),
                  onPressed: () {
                    saveData();
                  },
                ),
                ElevatedButton(
                  child: Text('Load'),
                  onPressed: () {
                    loadText().then((val) {
                      setState(() {
                        _textVal.text = val;
                      });

                      loadBool().then((val) {
                        setState(() {
                          _isOn = val;
                        });
                      });
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
