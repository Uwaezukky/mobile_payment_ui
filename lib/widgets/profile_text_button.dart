import 'package:flutter/material.dart';

class ProfileTextButton extends StatelessWidget {
  final String number;
  final String text;
  const ProfileTextButton({
    super.key,
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color(0xff4D5DFA),
            letterSpacing: 0,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff616161),
          ),
        ),
      ],
    );
  }
}
