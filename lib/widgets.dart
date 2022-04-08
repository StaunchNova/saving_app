import 'package:flutter/material.dart';
import 'utilities.dart';

class FlutterBankSplash extends StatelessWidget {
  const FlutterBankSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const FlutterBankLogin(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Utils.mainThemeColor,
      body: Stack(
        children: const [
          Center(
            child: Icon(Icons.savings, color: Colors.white, size: 60),
          ),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                strokeWidth: 8,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FlutterBankLogin extends StatefulWidget {
  const FlutterBankLogin({Key? key}) : super(key: key);

  @override
  State<FlutterBankLogin> createState() => _FlutterBankLoginState();
}

class _FlutterBankLoginState extends State<FlutterBankLogin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
