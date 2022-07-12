import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconContent({required this.gender,required this.icon});
  final IconData icon;
  final String gender;
  static const labelTextStyle = TextStyle
  (
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
  );

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
          style:labelTextStyle
        ),
      ],
    );
  }
}