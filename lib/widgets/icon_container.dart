import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color color;
  final String text;
  final String image;

  const IconContainer({
    super.key,
    required this.color,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(image, scale: 1.5),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Spartan',
            fontSize: 12,
            color: Color(0xff616161),
          ),
        ),
      ],
    );
  }
}
