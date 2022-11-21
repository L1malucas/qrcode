import 'package:flutter/material.dart';
import 'package:qrcode/models/scan_qr.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gerar Qr Code',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber.shade700,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            alignment: Alignment.center,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade700,
                  ),
                  onPressed: () {
                    QrScan();
                  },
                  child: const Text(
                    "Scannear",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
