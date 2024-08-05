import 'package:flutter/material.dart';

class DragabbleDragtargetSizeboxMaterialLearn extends StatefulWidget {
  @override
  _DragabbleDragtargetSizeboxMaterialLearnState createState() =>
      _DragabbleDragtargetSizeboxMaterialLearnState();
}

class _DragabbleDragtargetSizeboxMaterialLearnState
    extends State<DragabbleDragtargetSizeboxMaterialLearn> {
  Map<String, Color> _listColors = {
    'color1': Colors.red,
    'color2': Colors.green,
  };

  Color? _targetColor;

  bool _isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dragable, DragTarget, Sizebox',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: _listColors['color1'],
                      borderRadius: BorderRadius.circular(100),
                      elevation: 5,
                    ),
                  ),
                  data: 'color1',
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: _listColors['color1']?.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(100),
                      elevation: 5,
                    ),
                  ),
                ),
                Draggable(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: _listColors['color2'],
                      borderRadius: BorderRadius.circular(100),
                      elevation: 5,
                    ),
                  ),
                  data: 'color2',
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: _listColors['color2']?.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(100),
                      elevation: 5,
                    ),
                  ),
                )
              ],
            ),
            DragTarget(
              onWillAcceptWithDetails: (details) {
                return true;
              },
              onAcceptWithDetails: (details) {
                _isAccepted = true;
                _targetColor = _listColors[details.data];
              },
              builder: (context, candidateData, rejectedData) {
                return (_isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: _targetColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
