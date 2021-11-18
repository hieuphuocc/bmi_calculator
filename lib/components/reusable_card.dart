import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color1, this.cardChild, this.onPress});

  final Color color1;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
