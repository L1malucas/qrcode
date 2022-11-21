import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const QrMain());
}

class QrMain extends StatelessWidget {
  const QrMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr Code',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const HomePage(),
    );
  }
}
