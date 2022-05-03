// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BmiController on _BmiControllerBase, Store {
  Computed<bool>? _$isHeightValidComputed;

  @override
  bool get isHeightValid =>
      (_$isHeightValidComputed ??= Computed<bool>(() => super.isHeightValid,
              name: '_BmiControllerBase.isHeightValid'))
          .value;
  Computed<bool>? _$isWeightValidComputed;

  @override
  bool get isWeightValid =>
      (_$isWeightValidComputed ??= Computed<bool>(() => super.isWeightValid,
              name: '_BmiControllerBase.isWeightValid'))
          .value;
  Computed<bool>? _$hasResultComputed;

  @override
  bool get hasResult =>
      (_$hasResultComputed ??= Computed<bool>(() => super.hasResult,
              name: '_BmiControllerBase.hasResult'))
          .value;

  final _$heightAtom = Atom(name: '_BmiControllerBase.height');

  @override
  String? get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(String? value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  final _$weightAtom = Atom(name: '_BmiControllerBase.weight');

  @override
  String? get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(String? value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
    });
  }

  final _$bmiAtom = Atom(name: '_BmiControllerBase.bmi');

  @override
  Map<String, dynamic> get bmi {
    _$bmiAtom.reportRead();
    return super.bmi;
  }

  @override
  set bmi(Map<String, dynamic> value) {
    _$bmiAtom.reportWrite(value, super.bmi, () {
      super.bmi = value;
    });
  }

  final _$_BmiControllerBaseActionController =
      ActionController(name: '_BmiControllerBase');

  @override
  void setHeight(String? value) {
    final _$actionInfo = _$_BmiControllerBaseActionController.startAction(
        name: '_BmiControllerBase.setHeight');
    try {
      return super.setHeight(value);
    } finally {
      _$_BmiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeight(String? value) {
    final _$actionInfo = _$_BmiControllerBaseActionController.startAction(
        name: '_BmiControllerBase.setWeight');
    try {
      return super.setWeight(value);
    } finally {
      _$_BmiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBmi(Map<String, dynamic> value) {
    final _$actionInfo = _$_BmiControllerBaseActionController.startAction(
        name: '_BmiControllerBase.setBmi');
    try {
      return super.setBmi(value);
    } finally {
      _$_BmiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
height: ${height},
weight: ${weight},
bmi: ${bmi},
isHeightValid: ${isHeightValid},
isWeightValid: ${isWeightValid},
hasResult: ${hasResult}
    ''';
  }
}
