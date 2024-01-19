import 'package:fhunger/view/login/welcome-view.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goWelcomeView();
  }

  void goWelcomeView() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => WelcomeView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc22524),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 250,
          ),
        ),
        Text('Fhunger', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 40),)
      ]),
    );
  }
}
