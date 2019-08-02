import 'package:flutter/material.dart';

import 'package:app_flutter_qr_codes/screens/generate_qr.dart';
import 'package:app_flutter_qr_codes/screens/scan_qr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter QR Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        GenerateQR.routeName: (context) => GenerateQR(),
        ScanQR.routeName: (context) => ScanQR(),
      },
      home: GenerateQR(),
    );
  }
}
