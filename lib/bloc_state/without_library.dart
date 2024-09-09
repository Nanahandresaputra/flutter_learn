import 'dart:async';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_blue }

class ColorBloc {
  Color _color = Colors.amber;

  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  StreamController<Color> _stateController = StreamController<Color>();

  StreamSink<ColorEvent> get eventSink => _eventController.sink;
  StreamSink<Color> get _stateSink => _stateController.sink;

  Stream<Color> get stateStream => _stateController.stream;

  void _mapEvenToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.blue;
    }

    _stateSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen(_mapEvenToState);
  }

  void dispose() {
    _stateController.close();
    _eventController.close();
  }
}
