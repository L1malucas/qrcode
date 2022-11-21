import 'package:flutter/material.dart';
import 'package:qrcode/models/generate_qr.dart';

class GeneratePAge extends StatefulWidget {
  const GeneratePAge({super.key});

  @override
  State<GeneratePAge> createState() => _GeneratePAgeState();
}

class _GeneratePAgeState extends State<GeneratePAge> {
  String dataQr = '';
  String save = 'Escolha o formato para salvar o Qr Code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Qr Code Gerado',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber.shade700,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: QrGenerator().generator(dataQr),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: TextField(
              onChanged: ((value) {
                setState(() {
                  dataQr = value;
                });
              }),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: "https://www.reconcavo.org.br/",
                filled: true,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: FloatingActionButton.extended(
              label: const Text(
                'Salvar',
                style: TextStyle(color: Colors.black87),
              ),
              tooltip: save,
              backgroundColor: Colors.amber[700],
              onPressed: () {},
              icon: const Icon(Icons.save, size: 40),
            ),
          ),
        ],
      ),
    );
  }
}
