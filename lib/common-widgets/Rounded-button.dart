import 'package:flutter/material.dart';

import '../common/colors.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  final double fontSize;
  const RoundedButton(
      {super.key,
        required this.title,
        required this.onPressed,
        this.fontSize = 16,
        this.type = RoundButtonType.bgPrimary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: type == RoundButtonType.bgPrimary ? null : Border.all(color: TColor.primaryColor, width: 1),
          color: type == RoundButtonType.bgPrimary ? TColor.primaryColor : TColor.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
              color: type == RoundButtonType.bgPrimary ? TColor.white :  TColor.primaryColor, fontSize: fontSize, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}