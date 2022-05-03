import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = Colors.white,
  }) : super(key: key);

  final String title;
  final Function() onPressed;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(AppTextStyles.button),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
        ),
        child: Text(title),
      ),
    );
  }
}
