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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Send timeout in connection with API server`
  String get request_timeout {
    return Intl.message(
      'Send timeout in connection with API server',
      name: 'request_timeout',
      desc: '',
      args: [],
    );
  }

  /// `Request cancelled`
  String get ERR_CANCEL {
    return Intl.message(
      'Request cancelled',
      name: 'ERR_CANCEL',
      desc: '',
      args: [],
    );
  }

  /// `Connection request timeout`
  String get CONNECT_TIMEOUT {
    return Intl.message(
      'Connection request timeout',
      name: 'CONNECT_TIMEOUT',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorised Request`
  String get unauthorisedRequest {
    return Intl.message(
      'Unauthorised Request',
      name: 'unauthorisedRequest',
      desc: '',
      args: [],
    );
  }

  /// `Request not found`
  String get requestNotFound {
    return Intl.message(
      'Request not found',
      name: 'requestNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Error due to a conflict`
  String get ERR409 {
    return Intl.message(
      'Error due to a conflict',
      name: 'ERR409',
      desc: '',
      args: [],
    );
  }

  /// `Internal Server Error`
  String get ERR500 {
    return Intl.message(
      'Internal Server Error',
      name: 'ERR500',
      desc: '',
      args: [],
    );
  }

  /// `Service unavailable`
  String get ERR503 {
    return Intl.message(
      'Service unavailable',
      name: 'ERR503',
      desc: '',
      args: [],
    );
  }

  /// `Received invalid status code:{code}`
  String ERR_DEFAULT(Object code) {
    return Intl.message(
      'Received invalid status code:$code',
      name: 'ERR_DEFAULT',
      desc: '',
      args: [code],
    );
  }

  /// `Unexpected error occurred`
  String get unexpectedError {
    return Intl.message(
      'Unexpected error occurred',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Format response error`
  String get formatException {
    return Intl.message(
      'Format response error',
      name: 'formatException',
      desc: '',
      args: [],
    );
  }

  /// `Unable to process the data`
  String get unableToProcess {
    return Intl.message(
      'Unable to process the data',
      name: 'unableToProcess',
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
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}