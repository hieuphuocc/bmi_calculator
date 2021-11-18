import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 52.0,
        height: 52.0,
      ),
      fillColor: Color(0xff4C4F5E),
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}
