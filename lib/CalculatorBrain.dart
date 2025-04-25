import 'dart:math';

class Calculatorbrain {
  Calculatorbrain({required this.height, required this.weight});

  final int height;
  final int weight;
  // ignore: non_constant_identifier_names
  double _Bmi = 0.0;

  String calculateBMI() {
    _Bmi = weight / pow(height / 100, 2);
    return _Bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_Bmi >= 25) {
      return "Overweight";
    } else if (_Bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if (_Bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercice more';
    } else if (_Bmi > 18.5) {
      return "You have a normal body weight. Good Job !";
    } else {
      return 'You have a lower than normal body weight. Try to eat more';
    }
  }
}
