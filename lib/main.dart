import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const QrMain());
}

class QrMain extends StatelessWidget {
  const QrMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr Code',
      home:  HomePage(),
    );
  }
}
