import 'package:flutter/material.dart';

class RowInReusableCard extends StatelessWidget {
  RowInReusableCard(
      {this.iconSex,
      @required this.contentText,
      this.textColor,
      this.iconColor});
  final IconData iconSex;
  final String contentText;
  final Color textColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSex,
          size: 22,
          color: iconColor,
        ),
        SizedBox(
          width: 7.0,
        ),
        Text(
          contentText,
          style: TextStyle(
            fontSize: 14.0,
            color: textColor,
            // fontFamily: 'Lobster',
          ),
        )
      ],
    );
  }
}
