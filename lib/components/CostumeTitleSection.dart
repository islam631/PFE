import 'package:flutter/material.dart';

class CostumeTitleSection extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CostumeTitleSection({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
