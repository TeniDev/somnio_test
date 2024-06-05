import 'package:flutter/material.dart';
import 'package:somnio_test/gen/l10n.dart';

extension ContextExtensions on BuildContext {
  IntlTranslations get locale => IntlTranslations.of(this);
}

extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}
