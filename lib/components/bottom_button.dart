import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        color: bottomContainerColor,
        height: 60.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        child: Align(
            child: Text(
              buttonTitle,
              style: kButtonStyle,
            )),
      ),
    );
  }
}
