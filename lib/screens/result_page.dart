import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  double result = 19.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Results'),
          leading: Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Color(0xFF5C6480),
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.person,
                  color: Color(0xFF5C6480),
                  size: 28,
                ),
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: Text(
                    result.toString(),
                    style: TextStyle(
                      fontSize: 55.0,
                      color: Color(0xFF59C6E5),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: activeCardColor,
                  boxShadow: [
                    shadowCircleMin,
                    shadowCirclePlus,
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'You have ',
                  style: TextStyle(color: inactiveFontColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Normal ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF59C6E5),
                      ),
                    ),
                    TextSpan(
                      text: 'body weight!',
                      style: TextStyle(color: inactiveFontColor),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableCard(
                cardChild: Center(child: Text("Details")),
                colour: activeCardColor,
                left: 100.0,
                top: 0.0,
                right: 100.0,
                bottom: 60.0,
              ),
            ),
          ],
        ));
  }
}
