import 'package:flutter/material.dart';

import '../common/colors.dart';

class RecentItemRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback onTap;
  const RecentItemRow({super.key, required this.rObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                rObj['image'].toString(),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rObj['name'],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: TColor.primaryText,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      rObj['type'],
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
                      rObj['food_type'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        color: TColor.secondaryText,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 8,
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
                      rObj['rate'],
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
                      '(${ rObj['rating'] } Ratings)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        color: TColor.secondaryText,
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
