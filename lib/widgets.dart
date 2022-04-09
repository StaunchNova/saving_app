import 'dart:math';

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
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 7, color: Utils.mainThemeColor),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.savings,
                color: Utils.mainThemeColor,
                size: 45,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome to',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const Text(
              'Flutter\nSavings Banks',
              style: TextStyle(
                  color: Utils.mainThemeColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Sign Into Your Bank Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50)),
                      padding: const EdgeInsets.all(5),
                      child: TextField(
                        onChanged: (text) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 20, bottom: 11, top: 11, right: 15),
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Utils.mainThemeColor,
                          ),
                        ),
                        style: const TextStyle(fontSize: 16),
                        controller: usernameController,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        onChanged: (text) {
                          setState(() {});
                        },
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Utils.mainThemeColor,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 15,
                            bottom: 11,
                            top: 11,
                            right: 15,
                          ),
                          hintText: 'Password',
                        ),
                        controller: passwordController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FlutterBankMainButton(
              label: 'Sign In',
              enabled: true,
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            FlutterBankMainButton(
              icon: Icons.account_circle,
              label: 'Register',
              onTap: () {},
              backgroundColor: Utils.mainThemeColor.withOpacity(0.05),
              iconColor: Utils.mainThemeColor,
              lableColor: Utils.mainThemeColor,
            ),
          ],
        ),
      ),
    );
  }
}

class FlutterBankMainButton extends StatelessWidget {
  final Function? onTap;
  final String? label;
  final bool? enabled;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? lableColor;
  const FlutterBankMainButton({
    Key? key,
    this.label,
    this.onTap,
    this.enabled = true,
    this.backgroundColor = Utils.mainThemeColor,
    this.icon,
    this.iconColor = Colors.white,
    this.lableColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
            color:
                enabled! ? backgroundColor : backgroundColor!.withOpacity(0.5),
            child: InkWell(
              onTap: enabled!
                  ? () {
                      onTap!();
                    }
                  : null,
              highlightColor: Colors.white.withOpacity(0.2),
              splashColor: Colors.white.withOpacity(0.1),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: icon != null,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Icon(
                          icon,
                          color: iconColor,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      label!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: lableColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
