import 'package:flutter/material.dart';

import '../../themes/app_text_styles.dart';

class BmiInfoItem extends StatelessWidget {
  const BmiInfoItem({
    Key? key,
    required this.range,
    required this.description,
    required this.color,
  }) : super(key: key);

  final String range;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 200,
              child: Text(
                range,
                style: AppTextStyles.bmiRange,
                textAlign: TextAlign.right,
              ),
            ),
            Expanded(
              child: Text(
                description,
                style: AppTextStyles.bmiClassification,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
