import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculator {
  int weight;
  int height; //in centimeters
  double _BMI;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    _BMI = weight / pow((height * 0.01), 2);
    return _BMI.toStringAsFixed(1);
  }

  String BMIResult() {
    if(_BMI < 16){
      return 'LOW';
    }
    else if(_BMI < 23){
      return 'NORMAL';
    }
    else {
      return 'HIGH';
    }
  }

  String BMIInterpretation() {
    if(_BMI < 16){
      return 'Your BMI is low. Try to eat more.';
    }
    else if(_BMI < 23){
      return 'You\'ve perfectly good BMI. Great job!';
    }
    else {
      return 'Your BMI is high. Exercise more.';
    }
  }
}