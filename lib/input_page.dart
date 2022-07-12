import 'dart:ui';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0XFF111328);
const bottomContainerColor = Color(0XFFEB1555);
enum gender{male,female};
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardCol = inactiveCardColor;
  Color femaleCardCol = inactiveCardColor;
  void updateColor(gender g) {
    //male card
    if (g == gender.male) {
      if (maleCardCol == inactiveCardColor) {
        maleCardCol = activeCardColor;
        femaleCardCol=inactiveCardColor;
      } else {
        maleCardCol = inactiveCardColor;
      }
      //Female card
    } else if (g == gender.female) {
      if (femaleCardCol == inactiveCardColor) {
        femaleCardCol = activeCardColor;
        maleCardCol = inactiveCardColor;
      }
      else
        femaleCardCol = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      col: maleCardCol,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      col: femaleCardCol,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ReusableCard(
                col: inactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  gender: 'MALE',
                ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  col: inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    col: inactiveCardColor,
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
