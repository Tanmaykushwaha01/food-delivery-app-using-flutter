import 'package:fhunger/common-widgets/rectangle-textfield.dart';
import 'package:fhunger/common/social-media-icon.dart';
import 'package:flutter/material.dart';

import '../../common-widgets/rectangle-button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final textEmail = TextEditingController();
  final mobileNo = TextEditingController();
  final textPassword = TextEditingController();
  final referralCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
              'SignUp',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const Text(
              'Sign Up to enjoy the benefits of fhunger loyalty program',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * .8
              ),
            child: Center(
              child: Column(
                children: [

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: firstName,
                          decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(),
                              fillColor: Colors.black12,
                              filled: true,
                              hintText: 'First Name',
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 20)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: firstName,
                          decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(),
                              fillColor: Colors.black12,
                              filled: true,
                              hintText: 'First Name',
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 20)),
                        ),
                      ),
                    ],
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
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      child: TextField(
                        controller: mobileNo,
                        decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            fillColor: Colors.black12,
                            filled: true,
                            labelText: "Country"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: mobileNo,
                        decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(),
                            fillColor: Colors.black12,
                            filled: true,
                            labelText: "Country"),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  RectangleTextfield(
                      controller: textPassword,
                      hintText: 'Password',
                      keyboardType: TextInputType.text,
                      obscureText: false),
                  const SizedBox(
                    height: 20,
                  ),
                  RectangleTextfield(
                      controller: referralCode,
                      hintText: 'Referral Code',
                      keyboardType: TextInputType.text,
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sign Up to enjoy the benefits of fhunger loyalty program',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RectangleButton(
                    onPressed: () {},
                    title: "SEND VERIFICATION CODE",
                    buttonColor: Colors.yellow,
                    fontColor: Colors.black,
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
                            'Or SignUp with',
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
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ),),

          ]),
    ));
  }
}

// Row(
// children: [
// TextField(
// controller: firstName,
// decoration: const InputDecoration(
// labelText: 'First Name'
// ),
// ),
// TextField(
// controller: firstName,
// decoration: const InputDecoration(
// labelText: 'First Name'
// ),
// ),
// ],
// ),
// const SizedBox(
// height: 10,
// ),
// RectangleTextfield(
// controller: textEmail,
// hintText: 'Email',
// keyboardType: TextInputType.emailAddress,
// obscureText: false),
// const SizedBox(
// height: 10,
// ),
// Row(
// children: [
// TextField(
// controller: mobileNo,
// decoration: const InputDecoration(
// enabledBorder: InputBorder.none,
// labelText: "Country"
// ),
// ),
// TextField(
// controller: mobileNo,
// decoration: const InputDecoration(
// enabledBorder: InputBorder.none,
// labelText: "Country"
// ),
// ),
// ],
// )

// Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 height: 64,
//               ),
//               Image.asset(
//                 'assets/images/logo.png',
//                 color: Colors.red,
//                 height: 50,
//               ),
//               const Text(
//                 'Fhunger',
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.red,
//                 ),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Text(
//             'SignUp',
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
//           ),
//           const Text(
//             'Sign Up to enjoy the benefits of fhunger loyalty program',
//             style: TextStyle(fontWeight: FontWeight.w500),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//
//           RectangleButton(
//             onPressed: () {},
//             title: "SEND VERIFICATION CODE",
//             buttonColor: Colors.yellow,
//             fontColor: Colors.black,
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Divider(
//                     thickness: 0.5,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10.0),
//                   child: Text(
//                     'Or continue with',
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                 ),
//                 Expanded(
//                   child: Divider(
//                     thickness: 0.5,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // google button
//               SquareTile(imgPath: 'assets/images/google.png'),
//               SizedBox(
//                 width: 5,
//               ),
//               SquareTile(imgPath: 'assets/images/facebook.png'),
//               SizedBox(
//                 width: 5,
//               ),
//               SquareTile(imgPath: 'assets/images/apple.png'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
