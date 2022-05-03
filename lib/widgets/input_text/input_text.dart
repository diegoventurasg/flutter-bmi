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
    this.onSubmitted,
  }) : super(key: key);

  final String label;
  final String? suffix;
  final void Function(String)? onChanged;
  final String? Function(String)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function()? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        controller: controller,
        onChanged: onChanged,
        textInputAction: onSubmitted == null ? TextInputAction.next : null,
        onFieldSubmitted: onSubmitted != null ? (v) => onSubmitted!() : null,
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
