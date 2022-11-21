import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: qrData,
              backgroundColor: Colors.white30,
              size: 300.0,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white30),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  qrData = value;
                  print(value);
                });
              },
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  hintText: "Digite o conteúdo do qrcode", filled: true),
            ),
          ),
        ],
      ),
    );
  }
}
