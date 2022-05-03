import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../repositories/bmi_repository.dart';
import '../themes/app_colors.dart';
part 'bmi_controller.g.dart';

class BmiController = _BmiControllerBase with _$BmiController;

abstract class _BmiControllerBase with Store {
  final repository = BmiRepository();
  final formKey = GlobalKey<FormState>();
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  @observable
  String? height;

  @observable
  String? weight;

  @observable
  Map<String, dynamic> bmi = {
    'color': AppColors.background,
    'description': '',
    'bmi': '',
  };

  @action
  void setHeight(String? value) => height = value;

  @action
  void setWeight(String? value) => weight = value;

  @action
  void setBmi(Map<String, dynamic> value) => bmi = value;

  @computed
  bool get isHeightValid => height != null && height!.trim().isNotEmpty;

  @computed
  bool get isWeightValid => weight != null && weight!.trim().isNotEmpty;

  bool get _validate => formKey.currentState!.validate();

  @computed
  bool get hasResult => (bmi['bmi'] as String).isNotEmpty;

  void calculate() {
    if (_validate) {
      final h = double.parse(height!) / 100;
      final w = double.parse(weight!);
      final result = repository.getBmi(height: h, weight: w);
      setBmi(result);
    }
  }

  void clear() {
    setHeight(null);
    setWeight(null);
    heightController.text = '';
    weightController.text = '';
    setBmi({
      'color': AppColors.background,
      'description': '',
      'bmi': '',
    });
  }
}
