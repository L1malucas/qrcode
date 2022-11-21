import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator {
  String data = '';
  generator(qrdata) {
    return QrImage(
      data: qrdata,
      backgroundColor: Colors.white24,
      size: 300.0,
    );
  }
}
