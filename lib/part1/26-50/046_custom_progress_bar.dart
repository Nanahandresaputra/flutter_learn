import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learn/folder_part1/046_custom_progress_bar/provider/progresbar_provider.dart';
import 'package:flutter_learn/folder_part1/046_custom_progress_bar/widget/custom_progressbar.dart';
import 'package:provider/provider.dart';

class CustomProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<TimeProgress>(
        create: (context) => TimeProgress(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Custom ProgressBar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeProgress>(
                  builder: (context, timeState, _) => CustomProgressBarWidget(
                    width: 200,
                    value: timeState.valueData,
                    totalValue: 15,
                  ),
                ),
                SizedBox(height: 15),
                Consumer<TimeProgress>(
                  builder: (context, timeState, _) => ElevatedButton(
                    onPressed:
                        timeState.valueData > 0 && timeState.valueData < 15
                            ? null
                            : () {
                                if (timeState.valueData == 0) {
                                  timeState.value = 15;
                                } else {
                                  Timer.periodic(Duration(seconds: 1), (time) {
                                    if (timeState.valueData == 0) {
                                      time.cancel();
                                    } else {
                                      timeState.value = timeState.valueData - 1;
                                    }
                                  });
                                }
                              },
                    child: Text(
                      timeState.valueData == 0 ? 'Reset' : 'Progress',
                      style: TextStyle(
                          color: timeState.valueData > 0 &&
                                  timeState.valueData < 15
                              ? Colors.grey
                              : Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            timeState.valueData > 0 && timeState.valueData < 15
                                ? Colors.grey[200]
                                : timeState.valueData == 0
                                    ? Colors.red
                                    : Colors.blue[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
