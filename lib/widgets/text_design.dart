import 'package:flutter/material.dart';

class TextDesign extends StatelessWidget {
  final String text;

  const TextDesign({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff7C82BA),
        fontFamily: 'Nunito',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
