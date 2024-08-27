import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShowQrCodeLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Show Qr Code',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: QrImageView(
            data: 'NanaHandreS',
            size: 250,
            // version: 6,
            backgroundColor: const Color.fromARGB(255, 5, 44, 102),
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(20),
            errorCorrectionLevel: QrErrorCorrectLevel.M,
          ),
        ),
      ),
    );
  }
}
