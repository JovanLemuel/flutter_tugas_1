import 'package:flutter/material.dart';
import 'package:flutter_tugas_1/flutter_widget.dart';

void main() {
  // runApp(const FlutterWidget());
  runApp(
    MaterialApp(
      home: const FlutterWidget(),
      routes: {
        '/book/': (context) => const BookNowView(),
        '/flutter/': (context) => const FlutterWidget(),
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            
          ],
        ),
      ),
    );
  }
}
