import 'package:flutter/material.dart';
import 'package:flutter_learn/bloc_state/without_library.dart';

class BlocWithoutLibrary extends StatefulWidget {
  @override
  _BlocWithoutLibraryState createState() => _BlocWithoutLibraryState();
}

class _BlocWithoutLibraryState extends State<BlocWithoutLibrary> {
  ColorBloc bloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'BloC wihout Library',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
              focusColor: Colors.amber.shade600,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_blue);
              },
              backgroundColor: Colors.blue,
              focusColor: Colors.blue.shade600,
            ),
          ],
        ),
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: snapshot.data),
              );
            },
          ),
        ),
      ),
    );
  }
}
