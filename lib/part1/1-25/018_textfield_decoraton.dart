import 'package:flutter/material.dart';

class TextfieldDecoratonLearn extends StatefulWidget {
  @override
  _TextfieldDecoratonLearnState createState() =>
      _TextfieldDecoratonLearnState();
}

class _TextfieldDecoratonLearnState extends State<TextfieldDecoratonLearn> {
  TextEditingController _controller = TextEditingController(text: 'Nilai awal');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb_outlined,
            color: Colors.white,
          ),
          title: Text(
            'TextField Decoration Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: _controller,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    // icon: Icon(Icons.adb_outlined), //icon diluar border
                    // suffix sama seperti prefix tapi posisi nya di belakang
                    filled: true,
                    fillColor: Colors.lightBlue[50],
                    labelText: 'Name',
                    hintText: 'masukan nama...', //seperti placeholder
                    floatingLabelStyle:
                        WidgetStateTextStyle.resolveWith((states) {
                      if (states.contains(WidgetState.focused)) {
                        return TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18);
                      } else {
                        return TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 18);
                      }
                    }),
                    prefixIcon: Icon(Icons.adb_rounded),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10), ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black54)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ))),
              ),
            ),
            Text(
              _controller.text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
