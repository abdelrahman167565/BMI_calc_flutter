import 'dart:ui';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectgender = gender.male;
  int height=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    pressHandler: () {
                      setState(() {
                        selectgender = gender.male;
                      });
                    },
                    col: selectgender == gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    pressHandler: () {
                      setState(() {
                        selectgender = gender.female;
                      });
                    },
                    col: selectgender == gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ReusableCard(
                col: kInactiveCardColor,
                cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style:kLabelTextStyle,
                        ),
                      ],
                    ),
                    Slider(value: height.toDouble(),
                      min:120.0,
                      max:220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                      setState(() {
                        height=newValue.round();
                      });
                      },


                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  pressHandler: () {
                    setState(() {
                      selectgender = gender.male;
                    });
                  },
                  col: kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    pressHandler: () {
                      setState(() {
                        selectgender = gender.male;
                      });
                    },
                    col: kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
              ]),
            ),
          ],
        )

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.add),
        // ),
        );
  }
}
