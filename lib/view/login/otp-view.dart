import 'package:fhunger/view/login/forget-password-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common-widgets/rectangle-button.dart';

class OTPview extends StatefulWidget {
  const OTPview({super.key});
  @override
  State<OTPview> createState() => _OTPviewState();
}

class _OTPviewState extends State<OTPview> {
  final bool _signUp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(
            //   height: 64,
            // ),
            Image.asset(
              'assets/images/logo.png',
              color: Colors.red,
              height: 50,
            ),
            const Text(
              'Fhunger',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
            )
          ],
        ),
        foregroundColor: Colors.red,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Verify by \n Verification Code',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const Text(
            textAlign: TextAlign.center,
            "The code will will be sent to your mobile number \n (xxxx-xxxx-91).",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _otpInput(),
                _otpInput(),
                _otpInput(),
                _otpInput(),
                _otpInput(),
                _otpInput(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '00:59',
            style: TextStyle(
              fontSize: 12,
              color: Colors.red,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          RectangleButton(
            onPressed: () {
              _signUp == true ? _homePage() : null;
            },
            title: "Login",
            buttonColor: Colors.yellow,
            fontColor: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _homePage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ForgetPassword()));
  }

  _otpInput() {
    return SizedBox(
      width: 54,
      height: 62,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            )),
        style: Theme.of(context).textTheme.headlineLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
