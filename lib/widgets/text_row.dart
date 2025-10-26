import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final String text;
  final String? text2;
  final String? icon;

  const TextRow({super.key, required this.text, this.text2, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Spartan',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xff22252B),
          ),
        ),
        if (text2 != null ||
            icon != null) // only show right side if something exists
          Container(
            height: 27,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xffF5F5F5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                children: [
                  if (text2 != null)
                    Text(
                      text2!,
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff696D78),
                      ),
                    ),
                  if (icon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Image.asset(
                        icon!,
                        color: const Color(0xff696D78),
                        scale: 1,
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
