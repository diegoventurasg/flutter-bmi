import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../themes/app_text_styles.dart';

class InputText extends StatelessWidget {
  const InputText({
    Key? key,
    required this.label,
    this.suffix,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  final String label;
  final String? suffix;
  final void Function(String)? onChanged;
  final String? Function(String)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        controller: controller,
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        validator: (value) =>
            validator != null ? validator!(value ?? "") : null,
        style: AppTextStyles.input,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: AppTextStyles.titleInput,
          suffixText: suffix,
        ));
  }
}
