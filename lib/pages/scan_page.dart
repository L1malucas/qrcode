import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../models/scan_qr.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  // CONTROLES DA CÂMERA
  MobileScannerController cameraController = MobileScannerController(
    torchEnabled: false, facing: CameraFacing.back,
    // format: e ratio: PODEM SER INCLUIDOS
  );
  bool _screenOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scan Qr Code',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber.shade700,
        centerTitle: true,
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.switchCamera(),
          ),
        ],
      ),
      // CONTROLES DA LEITURA DO QR. OBRIGATÓRIO ESTAR NO BODY
      body: MobileScanner(
        allowDuplicates: false,
        controller: cameraController,
        onDetect: _foundBarcode,
      ),
    );
  }

  void _foundBarcode(Barcode barcode, MobileScannerArguments? args) {
    /// open screen
    if (!_screenOpened) {
      final String code = barcode.rawValue ?? "---";
      debugPrint('Barcode found! $code');
      _screenOpened = true;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                FoundCodeScreen(screenClosed: _screenWasClosed, value: code),
          ));
    }
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}
