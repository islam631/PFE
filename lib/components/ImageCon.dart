import 'package:flutter/material.dart';

class ImageCon extends StatelessWidget {
  final String imagePath;

  const ImageCon({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(
        imagePath,
        height: 200,
        width: 200,
      ),
    );
  }
}
