import 'package:flutter/material.dart';

class OffersContainer extends StatelessWidget {
  final String image;
  final Color color;
  final String text;
  final String? text2;
  final String text3;
  final bool showContainer;
  final Widget? container;

  const OffersContainer({
    super.key,
    required this.color,
    required this.image,
    required this.text,
    this.text2,
    required this.text3,
    this.showContainer = false,
    this.container,
  });

  @override
  Widget build(BuildContext context) {
    final defaultContainer = Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffFFEDF1),
      ),
      child: Text(
        'Collect Now',
        style: TextStyle(
          fontFamily: 'Nunito',
          color: Color(0xffFA4D96),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

    return Container(
      padding: EdgeInsets.only(bottom: 0, top: 0),
      margin: EdgeInsets.only(top: 2, right: 10, left: 10, bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                Image.asset('assets/images/offer_background.png', scale: 1.7),
                Positioned(
                  right: 23,
                  top: 8,
                  child: Image.asset(image, scale: 1.7),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff616161),
                  fontSize: 17,
                ),
              ),
              if (text2 != null)
                Text(
                  text2!,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff616161),
                    fontSize: 14,
                  ),
                ),

              Text(
                text3,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w300,
                  color: Color(0xff9A9B9B),
                  fontSize: 12,
                ),
              ),
              if (showContainer) container ?? defaultContainer,
            ],
          ),
        ],
      ),
    );
  }
}
