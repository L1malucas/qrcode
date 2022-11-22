import 'package:flutter/material.dart';
import 'package:qrcode/pages/home_page.dart';

class FoundCodeScreen extends StatefulWidget {
  final String value;
  final Function() screenClosed;
  const FoundCodeScreen({
    Key? key,
    required this.value,
    required this.screenClosed,
  }) : super(key: key);

  @override
  State<FoundCodeScreen> createState() => _FoundCodeScreenState();
}

class _FoundCodeScreenState extends State<FoundCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Resultado do Qr Code",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(widget.value,
                  style: const TextStyle(
                    fontSize: 16,
                  )),
              const SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: 170,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[700]),
                  child: const Icon(
                    Icons.home,
                    size: 35,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
