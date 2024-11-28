import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  // Use a nullable variable if caching BMI, or calculate dynamically
  double? _bmi;

  // Constants for BMI ranges
  static const double overweightThreshold = 25.0;
  static const double normalMinThreshold = 18.5;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    // Calculate BMI dynamically if not cached
    final bmi = _bmi ?? weight / pow(height / 100, 2);
    if (bmi >= overweightThreshold) {
      return 'Overweight';
    } else if (bmi > normalMinThreshold) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    // Calculate BMI dynamically if not cached
    final bmi = _bmi ?? weight / pow(height / 100, 2);
    if (bmi >= overweightThreshold) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= normalMinThreshold) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
