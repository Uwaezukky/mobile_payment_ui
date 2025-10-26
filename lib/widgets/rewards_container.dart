import 'package:flutter/material.dart';

class RewardsContainer extends StatelessWidget {
  final Color color;

  const RewardsContainer({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
