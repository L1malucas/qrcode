import 'package:flutter/material.dart';

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
    );
  }
}
