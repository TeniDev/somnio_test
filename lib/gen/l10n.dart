// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class IntlTranslations {
  IntlTranslations();

  static IntlTranslations? _current;

  static IntlTranslations get current {
    assert(_current != null,
        'No instance of IntlTranslations was loaded. Try to initialize the IntlTranslations delegate before accessing IntlTranslations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<IntlTranslations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = IntlTranslations();
      IntlTranslations._current = instance;

      return instance;
    });
  }

  static IntlTranslations of(BuildContext context) {
    final instance = IntlTranslations.maybeOf(context);
    assert(instance != null,
        'No instance of IntlTranslations present in the widget tree. Did you add IntlTranslations.delegate in localizationsDelegates?');
    return instance!;
  }

  static IntlTranslations? maybeOf(BuildContext context) {
    return Localizations.of<IntlTranslations>(context, IntlTranslations);
  }

  /// `Proximamente`
  String get comingSoon {
    return Intl.message(
      'Proximamente',
      name: 'comingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Configuración`
  String get settings {
    return Intl.message(
      'Configuración',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Modo oscuro`
  String get darkMode {
    return Intl.message(
      'Modo oscuro',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Texto de ejemplo`
  String get exampleText {
    return Intl.message(
      'Texto de ejemplo',
      name: 'exampleText',
      desc: '',
      args: [],
    );
  }

  /// `Leer más`
  String get readMore {
    return Intl.message(
      'Leer más',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Comunidad`
  String get communityBanner {
    return Intl.message(
      'Comunidad',
      name: 'communityBanner',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<IntlTranslations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<IntlTranslations> load(Locale locale) => IntlTranslations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
