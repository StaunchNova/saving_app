import 'package:flutter/material.dart';
import 'package:saving_app/widgets.dart';

void main() {
  runApp(const FlutterBankApp());
}

class FlutterBankApp extends StatelessWidget {
  const FlutterBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterBankSplash(),
    );
  }
}
