import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator {
  String data = '';
  generator(qrdata) {
    final saida = QrImage(
      data: qrdata,
      backgroundColor: Colors.white24,
      size: 225.0,
      gapless: true,
    );
    print(saida);
    return saida;
  }
}
