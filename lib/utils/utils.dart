import 'dart:math';

import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/cupertino.dart';


class CalculatorBMI {
  final int height;
  final int weight;
  final int age;

  CalculatorBMI({this.height, this.weight, this.age});

  double calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  List getState(double bmi) {
    if (bmi >= 25.0) {
      return ['OVERWEIGHT', kOverWeightStateText, kOverWeightHint];
    } else if (bmi > 18.5) {
      return ['NORMAL', kNormalStateText , kNormalHint];
    } else
      return ['UNDERWEIGHT', kUnderWeightStateText, kUnderWeightHint];
  }

  Result getFullResult() {
    double bmi = calculateBMI();
    return Result(
        state: getState(bmi)[0],
        score: bmi.toStringAsFixed(1),
        style: getState(bmi)[1],
        hint: getState(bmi)[2]);
  }
}

class Result {
  final String state;
  final String score;
  final String hint;
  final TextStyle style;

  Result({this.state, this.score, this.style,this.hint});
}
