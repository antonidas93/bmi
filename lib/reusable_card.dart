import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color decorationColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.decorationColor, this.cardChild, this.onPress});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: decorationColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}