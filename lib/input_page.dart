import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    col: Color(0XFF1D1E33),
                    cardChild:  IconContent(icon: FontAwesomeIcons.mars,gender: 'MALE',),

                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    col: Color(0XFF1D1E33),
                    cardChild: IconContent(icon: FontAwesomeIcons.venus,gender: 'FEMALE',),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ReusableCard(
                col: Color(0XFF1D1E33),
                cardChild: IconContent(icon: FontAwesomeIcons.mars,gender: 'MALE',),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  col: Color(0XFF1D1E33),
                      cardChild: IconContent(icon: FontAwesomeIcons.mars,gender: 'MALE',),
                )),
                Expanded(
                  child: ReusableCard(
                    col: Color(0XFF1D1E33),
                    cardChild: IconContent(icon: FontAwesomeIcons.mars,gender: 'MALE',),
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

class IconContent extends StatelessWidget {
  IconContent({required this.gender,required this.icon});
  final IconData icon;
  final String gender;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.col, required this.cardChild});

  final Color col;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(10.0),
      ),
      // height: 200.0,
      // width: 170.0,
    );
  }
}
// Container(
// margin: EdgeInsets.all(15.0),
// decoration: BoxDecoration(
// color: Color(0XFF1D1E33),
// borderRadius: BorderRadius.circular(10.0),
// ),
// height: 200.0,
// width: 170.0,
// ),
