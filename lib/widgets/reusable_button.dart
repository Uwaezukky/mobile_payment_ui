import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color color;
  final String text;
  final TextStyle style;

  const ReusableButton({
    super.key,
    required this.color,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 304,
      height: 43,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        //shape: BoxShape.circle,
      ),
      child: Center(child: Text(text, style: style)),
    );
  }
}

class ReusableBtn extends StatelessWidget {
  final String icon;
  final Color color;
  final String text;

  const ReusableBtn({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 43,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Color(0xffEDEFFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Opacity(
                  opacity: 0.15,
                  child: Container(
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        icon,
                        height: 24,
                        width: 24,
                        //scale: 2,
                      ),
                      SizedBox(width: 13),
                      Text(
                        text,
                        style: TextStyle(
                          color: Color(0xff616161),
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

// final List<Map<String, dynamic>> iconItems = [
//   {
//     'color': const Color(0xffFFEDF1),
//     'text': 'Movies',
//     'image': 'assets/images/video-play.png',
//   },
//   {
//     'color': const Color(0xffFFEDF1),
//     'text': 'Train',
//     'image': 'assets/images/train.png',
//   },
//   {
//     'color': const Color(0xffFFEDF1),
//     'text': 'Bus',
//     'image': 'assets/images/bus.png',
//   },
//   {
//     'color': const Color(0xffFFEDF1),
//     'text': 'Flights',
//     'image': 'assets/images/airplane.png',
//   },
//   {
//     'color': const Color(0xffFFEDF1),
//     'text': 'Car',
//     'image': 'assets/images/smart-car.png',
//   },
// ];
