import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../input_text/input_text.dart';

class BmiForm extends StatelessWidget {
  const BmiForm({
    Key? key,
    required this.formKey,
    required this.heightController,
    required this.weightController,
    required this.onChangedHeight,
    required this.onChangedWeight,
    required this.isHeightValid,
    required this.isWeightValid,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController heightController;
  final TextEditingController weightController;
  final Function(String) onChangedHeight;
  final Function(String) onChangedWeight;
  final bool isHeightValid;
  final bool isWeightValid;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
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
              validator: (value) => isHeightValid ? null : 'Informe a altura',
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
            ),
          )
        ],
      ),
    );
  }
}
