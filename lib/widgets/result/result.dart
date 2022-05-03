import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.hasResult,
    required this.onClear,
    required this.value,
    required this.description,
  }) : super(key: key);

  final bool hasResult;
  final String value;
  final String description;
  final Function() onClear;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                hasResult ? 'SEU RESULTADO' : '',
                style: AppTextStyles.titleResult,
              ),
            ],
          ),
          if (!hasResult)
            Expanded(
              child: Text(
                hasResult ? value : 'CALCULE O SEU IMC',
                style: AppTextStyles.noResult,
              ),
            ),
          if (hasResult)
            Row(
              children: [
                Text(
                  value,
                  style: AppTextStyles.result,
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/info');
                      },
                      child: const Icon(
                        Icons.info_outline_rounded,
                        color: AppColors.secondary,
                        size: 20,
                      ),
                    ),
                    const SizedBox(height: 2),
                    InkWell(
                      onTap: onClear,
                      child: const Icon(
                        Icons.refresh,
                        color: AppColors.secondary,
                        size: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          Text(
            hasResult ? description : '',
            style: AppTextStyles.description,
          ),
        ],
      ),
    );
  }
}
