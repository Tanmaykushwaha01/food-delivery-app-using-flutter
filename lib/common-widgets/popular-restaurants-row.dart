import 'package:flutter/material.dart';

import '../common/colors.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const PopularRestaurantRow(
      {super.key, required this.pObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pObj['image'].toString(),
              width: double.maxFinite,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pObj['name'],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18,
                      color: TColor.primaryText,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 12,
                  width: 8,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(
                    Icons.star,
                    size: 10,
                    color: TColor.primaryColor,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    pObj['rate'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: TColor.primaryText,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '(${pObj['rating']} Ratings)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: TColor.secondaryText,
                    ),
                  ),
                  Text(
                    pObj['type'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: TColor.secondaryText,
                    ),
                  ),
                  Text(
                    " . ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: TColor.primaryColor,
                    ),
                  ),
                  Text(
                    pObj['food_type'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: TColor.secondaryText,
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
