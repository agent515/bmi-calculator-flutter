import 'dart:ui';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.BMI,@required this.BMIResult, @required this.BMIInterpretation});

  final String BMI;
  final String BMIResult;
  final String BMIInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      BMIResult,
                    style: kBMIResultTextStyle
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      BMI,
                    style: kBMIResultNumberTextStyle
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      BMIInterpretation,
                    textAlign: TextAlign.center,
                    style: kBMIResultInterpretationTextStyle
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: bottomContainerHeight,
                color: Color(0xFFEB1555),
                padding: EdgeInsets.only(bottom: 10.0),
                child: Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    )
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
