import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/folder_part1/bloc_state/flutter_bloc.dart';

class FlutterBlocLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBloc>(
        create: (context) => ColorBloc(), child: MainWidget());
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Flutter_BloC Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                colorBloc.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
              focusColor: Colors.amber.shade600,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                colorBloc.add(ColorEvent.to_blue);
              },
              backgroundColor: Colors.blue,
              focusColor: Colors.blue.shade600,
            ),
          ],
        ),
        body: Center(
            child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: currentColor),
          ),
        )),
      ),
    );
  }
}
