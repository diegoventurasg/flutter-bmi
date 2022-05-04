import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controllers/bmi_controller.dart';
import '../widgets/bmi_form/bmi_form.dart';
import '../widgets/result/result.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = BmiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return Container(
          color: controller.bmi['color'],
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: SizedBox(
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Result(
                        hasResult: controller.hasResult,
                        value: controller.bmi['bmi'],
                        description: controller.bmi['description'],
                        onClear: controller.clear,
                      ),
                      const SizedBox(height: 50),
                      BmiForm(
                          formKey: controller.formKey,
                          heightController: controller.heightController,
                          weightController: controller.weightController,
                          onChangedHeight: controller.setHeight,
                          onChangedWeight: controller.setWeight,
                          isHeightValid: controller.isHeightValid,
                          isWeightValid: controller.isWeightValid,
                          hasResult: controller.hasResult,
                          onSubmitted: controller.calculate),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
