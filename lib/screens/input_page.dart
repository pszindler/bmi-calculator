import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'row_in_the_reusable_card.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'rounded_icon_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 170;
  int age = 25;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        leading: Container(
          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu_book,
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
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: RowInReusableCard(
                      iconColor: selectedGender == Gender.male
                          ? activeIconColor
                          : inactiveIconColor,
                      textColor: selectedGender == Gender.male
                          ? activeFontColor
                          : inactiveFontColor,
                      iconSex: FontAwesomeIcons.mars,
                      contentText: 'Male',
                    ),
                    colour: activeCardColor,
                    left: 35.0,
                    top: 20.0,
                    bottom: 30.0,
                    right: 10.0,
                    gradientDecor: selectedGender == Gender.male
                        ? activeGradient
                        : inactiveGradient,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: RowInReusableCard(
                      iconColor: selectedGender == Gender.female
                          ? activeIconColor
                          : inactiveIconColor,
                      textColor: selectedGender == Gender.female
                          ? activeFontColor
                          : inactiveFontColor,
                      iconSex: FontAwesomeIcons.venus,
                      contentText: 'Female',
                    ),
                    colour: activeCardColor,
                    left: 10.0,
                    top: 20.0,
                    bottom: 30.0,
                    right: 35.0,
                    gradientDecor: selectedGender == Gender.female
                        ? activeGradient
                        : inactiveGradient,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'Height',
                          style: labelTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              RotatedBox(
                                quarterTurns: 3,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 10.0),
                                  ),
                                  child: Slider(
                                    value: height.toDouble(),
                                    min: 120,
                                    max: 220,
                                    activeColor: activeSliderColor,
                                    inactiveColor: inactiveSliderColor,
                                    onChanged: (double newValue) {
                                      setState(() {
                                        height = newValue.round();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                height.toString(),
                                style: labelMiddleTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    colour: activeCardColor,
                    left: 35.0,
                    top: 0.0,
                    bottom: 20.0,
                    right: 10.0,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          cardChild: Column(
                            children: [
                              Text("Weight"),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          weight++;
                                        },
                                      );
                                    },
                                    icon: FontAwesomeIcons.plus,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RoundIconButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          weight--;
                                        },
                                      );
                                    },
                                    icon: FontAwesomeIcons.minus,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          colour: activeCardColor,
                          left: 10.0,
                          top: 0.0,
                          bottom: 20.0,
                          right: 35.0,
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          cardChild: Column(
                            children: [
                              Text("Age"),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          age++;
                                        },
                                      );
                                    },
                                    icon: FontAwesomeIcons.plus,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RoundIconButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          age--;
                                        },
                                      );
                                    },
                                    icon: FontAwesomeIcons.minus,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          colour: activeCardColor,
                          left: 10.0,
                          top: 0.0,
                          bottom: 20.0,
                          right: 35.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPress: () {
                Navigator.pushNamed(context, '/result');
              },
              colour: activeCardColor,
              left: 30.0,
              top: 10.0,
              bottom: 35.0,
              right: 30.0,
              gradientDecor: activeGradient,
              cardChild: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Let's Begin",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
