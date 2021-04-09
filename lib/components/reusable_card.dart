import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.cardChild,
      this.gradientDecor,
      this.onPress});

  final Color colour;
  final double left, top, right, bottom;
  final Widget cardChild;
  final Gradient gradientDecor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(6),
        child: cardChild,
        margin: EdgeInsets.fromLTRB(left, top, right, bottom),
        decoration: BoxDecoration(
          gradient: gradientDecor,
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            shadowButtonsMin,
            shadowButtonPlus,
          ],
        ),
      ),
    );
  }
}
