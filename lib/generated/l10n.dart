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

  /// `contacts`
  String get contacts {
    return Intl.message(
      'contacts',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get English {
    return Intl.message(
      'English',
      name: 'English',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get French {
    return Intl.message(
      'French',
      name: 'French',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get Arabic {
    return Intl.message(
      'Arabic',
      name: 'Arabic',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Youtube`
  String get youtube {
    return Intl.message(
      'Youtube',
      name: 'youtube',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: '',
      args: [],
    );
  }

  /// `mode`
  String get mode {
    return Intl.message(
      'mode',
      name: 'mode',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit?`
  String get areYouSureExit {
    return Intl.message(
      'Are you sure you want to exit?',
      name: 'areYouSureExit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message(
      'Dark Mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Normal Mode`
  String get normal_mode {
    return Intl.message(
      'Normal Mode',
      name: 'normal_mode',
      desc: '',
      args: [],
    );
  }

  /// `System Mode`
  String get system_mode {
    return Intl.message(
      'System Mode',
      name: 'system_mode',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get historique {
    return Intl.message(
      'History',
      name: 'historique',
      desc: '',
      args: [],
    );
  }

  /// `Who are we?`
  String get quisommesnous {
    return Intl.message(
      'Who are we?',
      name: 'quisommesnous',
      desc: '',
      args: [],
    );
  }

  /// `Our products`
  String get nosproduits {
    return Intl.message(
      'Our products',
      name: 'nosproduits',
      desc: '',
      args: [],
    );
  }

  /// `Policies`
  String get politiques {
    return Intl.message(
      'Policies',
      name: 'politiques',
      desc: '',
      args: [],
    );
  }

  /// `Certificates`
  String get certificates {
    return Intl.message(
      'Certificates',
      name: 'certificates',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get decouvrir {
    return Intl.message(
      'Discover',
      name: 'decouvrir',
      desc: '',
      args: [],
    );
  }

  /// `َAll Together to build`
  String get tousEnsemble {
    return Intl.message(
      'َAll Together to build',
      name: 'tousEnsemble',
      desc: '',
      args: [],
    );
  }

  /// `a future of steel`
  String get avenirEnAcier {
    return Intl.message(
      'a future of steel',
      name: 'avenirEnAcier',
      desc: '',
      args: [],
    );
  }

  /// `VIEW MORE`
  String get viewmore {
    return Intl.message(
      'VIEW MORE',
      name: 'viewmore',
      desc: '',
      args: [],
    );
  }

  /// ` Home`
  String get acceuil {
    return Intl.message(
      ' Home',
      name: 'acceuil',
      desc: '',
      args: [],
    );
  }

  /// `Recruitment`
  String get recrutement {
    return Intl.message(
      'Recruitment',
      name: 'recrutement',
      desc: '',
      args: [],
    );
  }

  /// `Media and news`
  String get media {
    return Intl.message(
      'Media and news',
      name: 'media',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get actulites {
    return Intl.message(
      'News',
      name: 'actulites',
      desc: '',
      args: [],
    );
  }

  /// `Follow the news of SIDER EL HADJAR and be informed of the most important events and our latest activities`
  String get textActulites {
    return Intl.message(
      'Follow the news of SIDER EL HADJAR and be informed of the most important events and our latest activities',
      name: 'textActulites',
      desc: '',
      args: [],
    );
  }

  /// `Browse`
  String get parcourir {
    return Intl.message(
      'Browse',
      name: 'parcourir',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get produits {
    return Intl.message(
      'Products',
      name: 'produits',
      desc: '',
      args: [],
    );
  }

  /// `SIDER is an iron complex located 12 km from the city of Annaba. It covers an area of 832 hectares and employs 5,144 agents.`
  String get siderDEsc {
    return Intl.message(
      'SIDER is an iron complex located 12 km from the city of Annaba. It covers an area of 832 hectares and employs 5,144 agents.',
      name: 'siderDEsc',
      desc: '',
      args: [],
    );
  }

  /// `Many products are manufactured at SIDER`
  String get siderPro {
    return Intl.message(
      'Many products are manufactured at SIDER',
      name: 'siderPro',
      desc: '',
      args: [],
    );
  }

  /// `Meeting our customers' requirements at the lowest costs is the challenge that the General Administration of SIDER El HADHAR intends to undertake on a daily basis`
  String get politiqueQualite {
    return Intl.message(
      'Meeting our customers\' requirements at the lowest costs is the challenge that the General Administration of SIDER El HADHAR intends to undertake on a daily basis',
      name: 'politiqueQualite',
      desc: '',
      args: [],
    );
  }

  /// `Quality Policy`
  String get PolitiQuali {
    return Intl.message(
      'Quality Policy',
      name: 'PolitiQuali',
      desc: '',
      args: [],
    );
  }

  /// `Our Clients References`
  String get clientRefe {
    return Intl.message(
      'Our Clients References',
      name: 'clientRefe',
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
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
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
