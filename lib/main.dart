import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterBankApp());
}

class FlutterBankApp extends StatelessWidget {
  const FlutterBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF8700C3),
    );
  }
}
