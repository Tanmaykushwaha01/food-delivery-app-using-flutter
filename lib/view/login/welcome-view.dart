import 'package:fhunger/common-widgets/rectangle-button.dart';
import 'package:fhunger/view/login/login-view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
              const Text(
                'Fhunger',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Image.asset(
          'assets/images/handbags.jpg',
          height: 220,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Pickup & Have Fun with Hunger',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
              textAlign: TextAlign.center,
              'Create your fhunger profile for \n reward and fun deadatals',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(
          height: 70,
        ),
        RectangleButton(
          title: 'Get Started',
          fontColor: Colors.white,
          buttonColor: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginView()));
          },
        )
      ],
    ));
  }
}
