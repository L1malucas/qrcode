import 'dart:html';

import 'package:flutter/material.dart';
import 'package:qrcode/models/generate_qr.dart';

class GeneratePAge extends StatefulWidget {
  const GeneratePAge({super.key});

  @override
  State<GeneratePAge> createState() => _GeneratePAgeState();
}

class _GeneratePAgeState extends State<GeneratePAge> {
  String dataQr = '';

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
          ElevatedButton(
            onPressed: () {},
            child: Wrap(
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Click me!", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
