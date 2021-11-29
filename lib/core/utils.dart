import 'dart:math';

import 'package:bmi_app/core/enums.dart';

class BMICalculator {
  static double bmi({required double weight, required double height}) {
    return weight / pow(height / 100.0, 2);
  }

  static BMIStatus status(double bmi) {
    if (bmi > 30.0) {
      return BMIStatus.obese;
    } else if (bmi > 25.0) {
      return BMIStatus.overweight;
    } else if (bmi > 18.5) {
      return BMIStatus.normal;
    } else {
      return BMIStatus.underweight;
    }
  }

  static String message({required BMIStatus status}) {
    switch (status) {
      case BMIStatus.obese:
        return 'You are obese. Please excercise more.';
      case BMIStatus.overweight:
        return 'You are overweight. Please diet.';
      case BMIStatus.normal:
        return 'Congratulations. You have a normal body mass index.';
      case BMIStatus.underweight:
        return 'You are underweight. Please eat more.';
    }
  }
}
