//import 'dart:html';


import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard( {Key? key, this.col,  this.cardChild, this.pressHandler()?}):super (key: key);

  final Color? col;
  final Widget? cardChild;
  final VoidCallback? pressHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressHandler,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10.0),
        ),
        // height: 200.0,
        // width: 170.0,
      ),
    );
  }
}