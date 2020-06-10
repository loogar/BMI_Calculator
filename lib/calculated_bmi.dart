import 'dart:math';

class CalculatedBmi {
  CalculatedBmi({this.height, this.weight});

  final int weight;
  final int height;

  double _bmi;

  String calculateResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you are fat, move your ass to gym';
    } else if (_bmi > 18.5) {
      return 'you are normal, you will be fine';
    } else {
      return 'you are way to skinny, get your ass to McD';
    }
  }
}
