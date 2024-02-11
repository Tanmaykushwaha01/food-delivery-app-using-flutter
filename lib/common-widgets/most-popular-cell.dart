import 'package:flutter/material.dart';

import '../common/colors.dart';

class MostPopularCell extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;
  const MostPopularCell({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                mObj['image'].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              mObj['name'],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: TColor.primaryText,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mObj['type'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: TColor.secondaryText,),
              ),
                Text(
                  " . ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: TColor.primaryColor,),
              ),
                Text(
                  mObj['food_type'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: TColor.secondaryText,),
              ),
                const SizedBox(
                  width: 8,
                ),
                Icon(Icons.star,size: 10, color: TColor.primaryColor,),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  mObj['rate'],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: TColor.primaryText,
                ),
              ),]
            )
          ],
        ),
      ),
    );
  }
}
