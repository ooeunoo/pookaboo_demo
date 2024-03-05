import 'package:flutter/material.dart';

class L10n {
  L10n._();

  static final all = [
    const Locale('ko', ""),
    const Locale('en', ""),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'ko':
        return 'Korean';
      case 'en':
        return 'English';
      default:
        return 'Korean';
    }
  }
}
