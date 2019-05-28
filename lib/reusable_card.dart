import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color decorationColor;
  final Widget cardChild;

  ReusableCard({@required this.decorationColor, this.cardChild});

  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
