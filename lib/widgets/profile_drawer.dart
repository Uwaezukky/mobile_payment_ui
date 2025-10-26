import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  final String image;
  final String text;

  const ProfileDrawer({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Image.asset('assets/images/$image.png', scale: 1.5),
          SizedBox(width: 30),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/images/nextt.png',
            scale: 1.5,
            color: Color(0xff616161),
          ),
        ],
      ),
    );
  }
}
