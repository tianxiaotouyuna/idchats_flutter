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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Edit`
  String get main_edit {
    return Intl.message(
      'Edit',
      name: 'main_edit',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Do`
  String get main_walletFeature {
    return Intl.message(
      'Wallet Do',
      name: 'main_walletFeature',
      desc: '',
      args: [],
    );
  }

  /// `Chat Do`
  String get main_chatFeature {
    return Intl.message(
      'Chat Do',
      name: 'main_chatFeature',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get side_message {
    return Intl.message(
      'Message',
      name: 'side_message',
      desc: '',
      args: [],
    );
  }

  /// `MINT`
  String get side_mint {
    return Intl.message(
      'MINT',
      name: 'side_mint',
      desc: '',
      args: [],
    );
  }

  /// `Campaign`
  String get side_campaign {
    return Intl.message(
      'Campaign',
      name: 'side_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Space`
  String get side_space {
    return Intl.message(
      'Space',
      name: 'side_space',
      desc: '',
      args: [],
    );
  }

  /// `Application`
  String get side_application {
    return Intl.message(
      'Application',
      name: 'side_application',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get side_setting {
    return Intl.message(
      'Setting',
      name: 'side_setting',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting_setting {
    return Intl.message(
      'Setting',
      name: 'setting_setting',
      desc: '',
      args: [],
    );
  }

  /// `Wallets Management`
  String get setting_walletsManagement {
    return Intl.message(
      'Wallets Management',
      name: 'setting_walletsManagement',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get setting_language {
    return Intl.message(
      'Language',
      name: 'setting_language',
      desc: '',
      args: [],
    );
  }

  /// `Currency Unit`
  String get setting_currencyUnit {
    return Intl.message(
      'Currency Unit',
      name: 'setting_currencyUnit',
      desc: '',
      args: [],
    );
  }

  /// `Updates`
  String get setting_updates {
    return Intl.message(
      'Updates',
      name: 'setting_updates',
      desc: '',
      args: [],
    );
  }

  /// `loading...`
  String get common_loading {
    return Intl.message(
      'loading...',
      name: 'common_loading',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get common_success {
    return Intl.message(
      'Success',
      name: 'common_success',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get common_error {
    return Intl.message(
      'Error',
      name: 'common_error',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get common_login {
    return Intl.message(
      'Log in',
      name: 'common_login',
      desc: '',
      args: [],
    );
  }

  /// `Social login`
  String get common_socialLogin {
    return Intl.message(
      'Social login',
      name: 'common_socialLogin',
      desc: '',
      args: [],
    );
  }

  /// `Email login`
  String get common_emailLogin {
    return Intl.message(
      'Email login',
      name: 'common_emailLogin',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
