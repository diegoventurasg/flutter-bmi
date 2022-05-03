import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../themes/app_colors.dart';
import '../button/button.dart';
import '../input_text/input_text.dart';

class BmiForm extends StatelessWidget {
  const BmiForm({
    Key? key,
    required this.formKey,
    required this.heightController,
    required this.weightController,
    required this.onChangedHeight,
    required this.onChangedWeight,
    required this.onSubmitted,
    required this.isHeightValid,
    required this.isWeightValid,
    required this.hasResult,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController heightController;
  final TextEditingController weightController;
  final Function(String) onChangedHeight;
  final Function(String) onChangedWeight;
  final Function() onSubmitted;
  final bool isHeightValid;
  final bool isWeightValid;
  final bool hasResult;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: InputText(
                  label: 'Altura',
                  suffix: 'cm',
                  controller: heightController,
                  onChanged: onChangedHeight,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  validator: (value) =>
                      isHeightValid ? null : 'Informe a altura',
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 2,
                child: InputText(
                  label: 'Peso',
                  suffix: 'kg',
                  controller: weightController,
                  onChanged: onChangedWeight,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  validator: (value) => isWeightValid ? null : 'Informe o peso',
                  onSubmitted: onSubmitted,
                ),
              )
            ],
          ),
          const SizedBox(height: 70),
          Button(
            title: 'CALCULAR',
            onPressed: onSubmitted,
            backgroundColor: hasResult ? Colors.white : AppColors.primary,
            foregroundColor: hasResult ? AppColors.secondary : Colors.white,
          ),
        ],
      ),
    );
  }
}
