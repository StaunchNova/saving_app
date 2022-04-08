import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saving_app/widgets.dart';

void main() {
  runApp(const FlutterBankApp());
}

class FlutterBankApp extends StatelessWidget {
  const FlutterBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      home: const FlutterBankSplash(),
    );
  }
}
