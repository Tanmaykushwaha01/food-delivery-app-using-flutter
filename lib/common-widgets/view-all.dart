import 'package:flutter/material.dart';

import '../common/colors.dart';

class ViewAllTileRow extends StatelessWidget {
  final String title;
  final VoidCallback onView;
  const ViewAllTileRow({super.key, required this.title, required this.onView});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800),
        ),
        TextButton(
            onPressed: onView,
            child: Text(
              'View all',
              style: TextStyle(color: TColor.primaryColor),
            ))
      ],
    );
  }
}
