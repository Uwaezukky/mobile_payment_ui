import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  final String image;
  final String text;

  const ProfileRow({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/pixar$image.png', scale: 1.9),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Spartan',
            fontWeight: FontWeight.w500,
            color: Color(0xffAAB8C2),
          ),
        ),
      ],
    );
  }
}
