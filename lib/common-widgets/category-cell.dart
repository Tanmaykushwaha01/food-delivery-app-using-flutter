import 'package:flutter/material.dart';

import '../common/colors.dart';

class CategoryCell extends StatelessWidget {
  final Map cObj;
  final VoidCallback onTap;
  const CategoryCell({super.key, required this.cObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cObj['image'].toString(),
                width: 85,
                height: 85,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              cObj['name'],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: TColor.primaryText,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
