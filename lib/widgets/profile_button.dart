import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String buttonText;
  final String icon;

  const ProfileButton({
    super.key,
    required this.buttonText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xffEDEFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Text(
              buttonText,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xff616161),
              ),
            ),
          ),
          Image.asset(icon, scale: 2),
        ],
      ),
    );
  }
}
