import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('My QR Code'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: QrImage(
          data: 'My name is Khim Bahadur Gurung. I am first user of speed epay.',
          version: QrVersions.auto,
          size: 320,
          gapless: false,
          embeddedImage: AssetImage('assets/images/phone.png'),
        ),
      ),
    );
  }
}
