import 'package:fhunger/view/login/otp-view.dart';
import 'package:flutter/material.dart';

import '../../common-widgets/rectangle-button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  int _groupValue = 0;
  bool _verificationBtn = false;
  final _textEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(
              height: 64,
            ),
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Forget Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const Text(
              "Enter your registered email address/,mobile number \n and we'll send you the code to reset you password",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Please choose an option to receive the code.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      value: 0,
                      groupValue: _groupValue,
                      title: Text('Email'),
                      onChanged: (newValue) =>
                          setState(() => _groupValue = newValue!)),
                ),
                Expanded(
                  child: RadioListTile(
                      value: 2,
                      groupValue: _groupValue,
                      title: Text('Phone'),
                      onChanged: (newValue) =>
                          setState(() => _groupValue = newValue!)),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _verificationBtn = value.length >= 8 ? true : false;
                  });
                },
                textInputAction: TextInputAction.done,
                controller: _textEmail,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true,
                    labelText: 'Email or Phone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
            ),
            // RectangleTextfield(
            //     controller: _textEmail,
            //     hintText: "Email",
            //     keyboardType: TextInputType.name,
            //     obscureText: false),
            const SizedBox(
              height: 155,
            ),
            RectangleButton(
              onPressed: () {
                _verificationBtn == true ? _justchecking() : null;
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
      ),
    );
  }

  _justchecking() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OTPview(),
        ));
  }
}
