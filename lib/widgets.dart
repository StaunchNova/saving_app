import 'package:flutter/material.dart';
import 'utilities.dart';

class FlutterBankSplash extends StatelessWidget {
  const FlutterBankSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.mainThemeColor,
      body: Stack(
        children: const [
          Center(
            child: Icon(Icons.savings, color: Colors.white, size: 60),
          )
        ],
      ),
    );
  }
}