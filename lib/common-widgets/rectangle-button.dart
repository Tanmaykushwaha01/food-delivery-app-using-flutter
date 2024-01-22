import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color buttonColor;

  const RectangleButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: 300,
        color: buttonColor,
               child: Center(
                 child: Text(
                           title,
                           style: TextStyle( fontSize: 20, fontWeight: FontWeight.w600),
                         ),
               ),
      ),
    );
  }
}
