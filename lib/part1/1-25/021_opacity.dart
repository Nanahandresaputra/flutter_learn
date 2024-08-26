import 'package:flutter/material.dart';

class OpacityLearn extends StatelessWidget {
  const OpacityLearn({Key? key}) : super(key: key);

  // Opacity (Custom Card dengan Latar Bercorak)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Opacity Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade900, Colors.blue.shade400],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.1,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/pattern-2.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/img-2.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Flexible(
                              child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Spacer(
                                    flex: 3,
                                  ),
                                  Text(
                                    'Beautiful Mountain Photo',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Posted on',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                        margin: EdgeInsets.only(right: 4),
                                      ),
                                      Text(
                                        '26 Aug 2024',
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          child: Icon(
                                            Icons.thumb_up,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Text(
                                          '99',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(
                                          flex: 10,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.message,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Text(
                                          '898',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(
                                    flex: 5,
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
