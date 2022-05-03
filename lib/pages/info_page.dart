import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widgets/bmi_info_item/bmi_info_item.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
          width: 400,
          child: ListView(
            children: const [
              BmiInfoItem(
                range: '<18,5',
                description: 'Abaixo do peso',
                color: AppColors.underweight,
              ),
              BmiInfoItem(
                range: '18,5 até 24,9',
                description: 'Peso normal',
                color: AppColors.normal,
              ),
              BmiInfoItem(
                range: '25 até 29,9',
                description: 'Acima do peso',
                color: AppColors.overweight,
              ),
              BmiInfoItem(
                range: '30 até 39,9',
                description: 'Obesidade',
                color: AppColors.obese,
              ),
              BmiInfoItem(
                range: '>40',
                description: 'Obesidade grave',
                color: AppColors.extremlyObese,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
