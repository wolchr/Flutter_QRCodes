import 'package:flutter/material.dart';

import 'package:qrcode_reader/qrcode_reader.dart';

class ScanQR extends StatefulWidget {
  static const routeName = 'scan_qr';
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String _qrContent = '';

  Future<String> readQrCode() async {
    final result = await QRCodeReader().scan();
    if (result == null) {
      return '';
    }
    setState(() {
      _qrContent = result;
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: readQrCode,
              child: Text('Scan'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(_qrContent),
          )
        ],
      ),
    );
  }
}
