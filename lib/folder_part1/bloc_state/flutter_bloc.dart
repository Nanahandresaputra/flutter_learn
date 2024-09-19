import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { to_amber, to_blue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc() : super(Colors.amber) {
    on<ColorEvent>((event, emit) {
      _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.blue;
      emit(_color);
    });
  }
}
