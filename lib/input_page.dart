import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
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
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    decorationColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    decorationColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              decorationColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    decorationColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    decorationColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ), 
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color decorationColor;

  ReusableCard({@required this.decorationColor});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
