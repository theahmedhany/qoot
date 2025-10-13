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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Qoot`
  String get applicationName {
    return Intl.message('Qoot', name: 'applicationName', desc: '', args: []);
  }

  /// `View All`
  String get viewAll {
    return Intl.message('View All', name: 'viewAll', desc: '', args: []);
  }

  /// `Home`
  String get charityhome {
    return Intl.message('Home', name: 'charityhome', desc: '', args: []);
  }

  /// `Donations`
  String get charitydonations {
    return Intl.message(
      'Donations',
      name: 'charitydonations',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get charityprofile {
    return Intl.message('Profile', name: 'charityprofile', desc: '', args: []);
  }

  /// `Reservations`
  String get charityreservations {
    return Intl.message(
      'Reservations',
      name: 'charityreservations',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get charityHomewelcome {
    return Intl.message(
      'Welcome',
      name: 'charityHomewelcome',
      desc: '',
      args: [],
    );
  }

  /// `Hearts & Hands Charity`
  String get charityHeartsAndHandsCharity {
    return Intl.message(
      'Hearts & Hands Charity',
      name: 'charityHeartsAndHandsCharity',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants donate.. \nOrphanages receive.. \nVolunteers deliver.`
  String get charityDonationFlowHeader {
    return Intl.message(
      'Restaurants donate.. \nOrphanages receive.. \nVolunteers deliver.',
      name: 'charityDonationFlowHeader',
      desc: '',
      args: [],
    );
  }

  /// `View more`
  String get charityHomeViewmore {
    return Intl.message(
      'View more',
      name: 'charityHomeViewmore',
      desc: '',
      args: [],
    );
  }

  /// `Total Meals Received`
  String get charityHomeTotalMealsReceived {
    return Intl.message(
      'Total Meals Received',
      name: 'charityHomeTotalMealsReceived',
      desc: '',
      args: [],
    );
  }

  /// `Active Reservations`
  String get charityHomeActiveReservations {
    return Intl.message(
      'Active Reservations',
      name: 'charityHomeActiveReservations',
      desc: '',
      args: [],
    );
  }

  /// `Pending Donations`
  String get charityHomePendingDonations {
    return Intl.message(
      'Pending Donations',
      name: 'charityHomePendingDonations',
      desc: '',
      args: [],
    );
  }

  /// `Urgent Donations`
  String get charityHomeUrgentDonations {
    return Intl.message(
      'Urgent Donations',
      name: 'charityHomeUrgentDonations',
      desc: '',
      args: [],
    );
  }

  /// `Food Safety Tips`
  String get charityHomeFoodSafetyTips {
    return Intl.message(
      'Food Safety Tips',
      name: 'charityHomeFoodSafetyTips',
      desc: '',
      args: [],
    );
  }

  /// `Learn how to safely handle donated food`
  String get charityHomeFoodSafetyTipsSubtitle {
    return Intl.message(
      'Learn how to safely handle donated food',
      name: 'charityHomeFoodSafetyTipsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `All Available Donations`
  String get charityDonationsAllAvailableDonations {
    return Intl.message(
      'All Available Donations',
      name: 'charityDonationsAllAvailableDonations',
      desc: '',
      args: [],
    );
  }

  /// `Reserve Now`
  String get reserveNow {
    return Intl.message('Reserve Now', name: 'reserveNow', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
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
