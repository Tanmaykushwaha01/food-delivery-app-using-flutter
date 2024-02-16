import 'package:flutter/material.dart';

import '../common/colors.dart';

class MenuItemRow extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;
  const MenuItemRow(
      {super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              mObj['image'].toString(),
              width: double.maxFinite,
              height: 250,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mObj['name'],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            color: TColor.white,
                            fontWeight: FontWeight.w700),
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
                          mObj['rate'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            color: TColor.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          mObj['type'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            color: TColor.white,
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
                          mObj['food_type'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            color: TColor.white,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
