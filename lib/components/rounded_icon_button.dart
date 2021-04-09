import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 10,
      ),
      elevation: 4.0,
      shape: CircleBorder(),
      fillColor: Color(0xFFEDEDED),
      constraints: BoxConstraints.tightFor(width: 30.0, height: 30.0),
    );
  }
}
