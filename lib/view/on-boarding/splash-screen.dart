import 'package:fhunger/view/login/welcome-view.dart';
import 'package:flutter/material.dart';

import '../../common/colors.dart';

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
    await Future.delayed(const Duration(seconds: 5));
    welcomePage();
  }

  void welcomePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => WelcomeView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(children: [
        Image.asset(
          'assets/images/logo.png',
        )
      ]),
    );
  }
}
