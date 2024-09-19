import 'package:flutter/material.dart';
import 'package:flutter_learn/folder_part1/040_provider_state_management/shared_state.dart';
import 'package:provider/provider.dart';

class ProviderStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColor>(
        create: (context) => AplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<AplicationColor>(
              builder: (context, appColor, _) => Text(
                'Provider State Management',
                style: TextStyle(color: appColor.colorData),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<AplicationColor>(
                builder: (context, appColor, _) => AnimatedContainer(
                  duration: Duration(seconds: 1),
                  color: appColor.colorData,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 10),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Amber'),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Consumer<AplicationColor>(
                      builder: (context, appColor, _) => Switch(
                        activeColor: appColor.colorData,
                        inactiveTrackColor: Colors.lightBlue.shade300,
                        inactiveThumbColor: Colors.blue,
                        onChanged: (val) => {
                          appColor.color = val ? Colors.amber : Colors.blue,
                          appColor.isBool = val
                        },
                        value: appColor.isBoolData,
                      ),
                    ),
                  ),
                  Text('Blue')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
