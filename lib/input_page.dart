import 'package:flutter/material.dart';

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
                  child: ReusableCard(col: Color(0XFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(col: Color(0XFF1D1E33),),
                ),
              ]),
            ),
            Expanded(
              child: ReusableCard(col: Color(0XFF1D1E33),),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCard(col: Color(0XFF1D1E33),)
                ),
                Expanded(
                  child: ReusableCard(col: Color(0XFF1D1E33),),
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

class ReusableCard extends StatelessWidget {
  Color col;
  ReusableCard({required this.col});

  @override
  Widget build(BuildContext context) {
    return Container(
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
