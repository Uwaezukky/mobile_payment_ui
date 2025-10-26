import 'package:flutter/material.dart';

class BankTiles extends StatelessWidget {
  final Color color;
  final String text;
  final String text2;
  final Color color2;

  const BankTiles({
    super.key,
    required this.color,
    required this.text,
    required this.text2,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 140,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Spartan',
              fontWeight: FontWeight.w800,
              fontSize: 17,
              color: color2,
            ),
          ),
          Text(
            '1142524899652',
            style: TextStyle(
              color: Color(0xff696D78),
              fontFamily: 'Spartan',
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontFamily: 'Spartan',
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Color(0xff616161),
            ),
          ),
        ],
      ),
    );
  }
}
