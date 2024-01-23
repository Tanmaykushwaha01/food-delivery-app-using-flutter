import 'package:fhunger/common-widgets/rectangle-button.dart';
import 'package:fhunger/common-widgets/rectangle-textfield.dart';
import 'package:fhunger/common/social-media-icon.dart';
import 'package:fhunger/view/login/signupview.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Welcome to Login',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const Text(
            'Please login or Continue as Guest',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          RectangleTextfield(
              controller: textEmail,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              obscureText: false),
          const SizedBox(
            height: 10,
          ),
          RectangleTextfield(

              controller: textPassword,
              hintText: 'Password',
              keyboardType: TextInputType.text,
              obscureText: false),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RectangleButton(
            onPressed: () {},
            title: "Login",
            buttonColor: Colors.yellow,
            fontColor: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: RectangleButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpView()));
              },
              title: "Create Account",
              buttonColor: Colors.white,
              fontColor: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // google button
              SquareTile(imgPath: 'assets/images/google.png'),
              SizedBox(
                width: 5,
              ),
              SquareTile(imgPath: 'assets/images/facebook.png'),
              SizedBox(
                width: 5,
              ),
              SquareTile(imgPath: 'assets/images/apple.png'),
            ],
          ),
        ],
      ),
    );
  }
}
