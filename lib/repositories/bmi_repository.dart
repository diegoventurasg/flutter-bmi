import '../themes/app_colors.dart';

class BmiRepository {
  Map<String, dynamic> getBmi({
    required double height,
    required double weight,
  }) {
    double bmi = double.parse((weight / (height * height)).toStringAsFixed(1));
    String bmiText = bmi.toString().replaceAll('.0', '').replaceAll('.', ',');
    if (bmi < 18.5) {
      return {
        'color': AppColors.underweight,
        'description': 'Abaixo do peso',
        'bmi': bmiText,
      };
    }
    if (bmi < 25) {
      return {
        'color': AppColors.normal,
        'description': 'Peso normal',
        'bmi': bmiText,
      };
    }
    if (bmi < 30) {
      return {
        'color': AppColors.overweight,
        'description': 'Acima do peso',
        'bmi': bmiText,
      };
    }
    if (bmi < 40) {
      return {
        'color': AppColors.obese,
        'description': 'Obesidade',
        'bmi': bmiText,
      };
    }
    return {
      'color': AppColors.extremlyObese,
      'description': 'Obesidade grave',
      'bmi': bmiText,
    };
  }
}
