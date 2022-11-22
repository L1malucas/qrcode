import 'package:flutter/material.dart';
import 'package:qrcode/pages/generate_page.dart';
import 'package:qrcode/pages/scan_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
        title: const Text(
          'Qr Code',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade700,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (coontext) => const GeneratePAge()),
                      );
                    },
                    child: const Text(
                      "Gerar Qr Code",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade700,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (coontext) => const ScanPage()),
                      );
                    },
                    child: const Text(
                      "Scan Qr Code",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      // SafeArea(
      //   child: Container(
      //     alignment: Alignment.center,
      //     height: 100,
      //     child: Flex(
      //       direction: Axis.vertical,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Container(

      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: Colors.amber.shade700,
      //             ),
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (coontext) => const GeneratePAge()),
      //               );
      //             },
      //             child: const Text(
      //               "Gerar Qr Code",
      //               style: TextStyle(color: Colors.black),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         Container(

      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: Colors.amber.shade700,
      //             ),
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (coontext) => const ScanPage()),
      //               );
      //             },
      //             child: const Text(
      //               "Scanear Qr Code",
      //               style: TextStyle(color: Colors.black),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
