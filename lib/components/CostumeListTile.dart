import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final double fontSize;
  final VoidCallback onTap;

  const CustomListTile({
    super.key,
    required this.title,
    required this.fontSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: fontSize,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500),
        ),
        onTap: onTap,
      ),
    );
  }
}
