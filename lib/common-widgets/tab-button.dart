import 'package:fhunger/common/colors.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String title;
  final Icon icons;
  const TabButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.icons,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icons ,
         const SizedBox(height: 4,),
          Text(title,style: TextStyle(color: isSelected ? TColor.primaryColor : TColor.placeholder),)
        ],
      ),
    );
  }
}