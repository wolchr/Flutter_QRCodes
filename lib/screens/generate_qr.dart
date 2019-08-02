import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:app_flutter_qr_codes/screens/scan_qr.dart';

class GenerateQR extends StatefulWidget {
  static const routeName = 'generate_qr';
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  dynamic _qrCode;
  String _qrCodeValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, ScanQR.routeName);
              },
              child: Text(
                'Scan QR',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: RaisedButton(
              child: Text('Generate QR Code'),
              onPressed: () {
                setState(() {
                  _qrCode = QrImage(
                    data: _qrCodeValue ?? 'You can also enter a custom value',
                  );
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Please enter a value for the QR code'),
              onChanged: (String value) {
                _qrCodeValue = value;
              },
            ),
          ),
          Center(child: Container(width: 200, child: _qrCode)),
        ],
      ),
    );
  }
}
