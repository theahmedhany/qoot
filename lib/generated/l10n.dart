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

  /// `My Reservations`
  String get charityReservationsTitle {
    return Intl.message(
      'My Reservations',
      name: 'charityReservationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get charityReservationsTabBarAll {
    return Intl.message(
      'All',
      name: 'charityReservationsTabBarAll',
      desc: '',
      args: [],
    );
  }

  /// `Reserved`
  String get charityReservationsTabBarReserved {
    return Intl.message(
      'Reserved',
      name: 'charityReservationsTabBarReserved',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get charityReservationsTabBarActive {
    return Intl.message(
      'Active',
      name: 'charityReservationsTabBarActive',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get charityReservationsTabBarExpired {
    return Intl.message(
      'Expired',
      name: 'charityReservationsTabBarExpired',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Pickup`
  String get confirmPickup {
    return Intl.message(
      'Confirm Pickup',
      name: 'confirmPickup',
      desc: '',
      args: [],
    );
  }

  /// `Verified account`
  String get verifiedAccount {
    return Intl.message(
      'Verified account',
      name: 'verifiedAccount',
      desc: '',
      args: [],
    );
  }

  /// `All charity information`
  String get allcharityinformation {
    return Intl.message(
      'All charity information',
      name: 'allcharityinformation',
      desc: '',
      args: [],
    );
  }

  /// `Charity statistics`
  String get charityStatistics {
    return Intl.message(
      'Charity statistics',
      name: 'charityStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Turn on notification`
  String get turnOnNotification {
    return Intl.message(
      'Turn on notification',
      name: 'turnOnNotification',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message('Settings', name: 'Settings', desc: '', args: []);
  }

  /// `FAQ & Chat centre`
  String get FAQChatcentre {
    return Intl.message(
      'FAQ & Chat centre',
      name: 'FAQChatcentre',
      desc: '',
      args: [],
    );
  }

  /// `Give the rating`
  String get givetheRating {
    return Intl.message(
      'Give the rating',
      name: 'givetheRating',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Condition`
  String get termsAndCondition {
    return Intl.message(
      'Terms & Condition',
      name: 'termsAndCondition',
      desc: '',
      args: [],
    );
  }

  /// `About Qoot team`
  String get aboutQootteam {
    return Intl.message(
      'About Qoot team',
      name: 'aboutQootteam',
      desc: '',
      args: [],
    );
  }

  /// `Exit the app`
  String get exittheapp {
    return Intl.message('Exit the app', name: 'exittheapp', desc: '', args: []);
  }

  /// `Donation Details`
  String get donationDetails {
    return Intl.message(
      'Donation Details',
      name: 'donationDetails',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant Information`
  String get donationDetailsRestaurantInformation {
    return Intl.message(
      'Restaurant Information',
      name: 'donationDetailsRestaurantInformation',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `View on Map`
  String get viewonMap {
    return Intl.message('View on Map', name: 'viewonMap', desc: '', args: []);
  }

  /// `All Charity Info`
  String get allCharityInfo {
    return Intl.message(
      'All Charity Info',
      name: 'allCharityInfo',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get documents {
    return Intl.message('Documents', name: 'documents', desc: '', args: []);
  }

  /// `Quick Stats`
  String get quickStats {
    return Intl.message('Quick Stats', name: 'quickStats', desc: '', args: []);
  }

  /// `Edit Charity Info`
  String get editCharityInfo {
    return Intl.message(
      'Edit Charity Info',
      name: 'editCharityInfo',
      desc: '',
      args: [],
    );
  }

  /// `Delete Charity`
  String get deleteCharity {
    return Intl.message(
      'Delete Charity',
      name: 'deleteCharity',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get restaurants {
    return Intl.message('Restaurants', name: 'restaurants', desc: '', args: []);
  }

  /// `View Details`
  String get viewDetails {
    return Intl.message(
      'View Details',
      name: 'viewDetails',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Contact`
  String get contact {
    return Intl.message('Contact', name: 'contact', desc: '', args: []);
  }

  /// `All Charities`
  String get allCharitiesScreenTitle {
    return Intl.message(
      'All Charities',
      name: 'allCharitiesScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create Donation`
  String get createDonationScreenTitle {
    return Intl.message(
      'Create Donation',
      name: 'createDonationScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Food Type`
  String get createDonationScreenFoodTypeLabel {
    return Intl.message(
      'Food Type',
      name: 'createDonationScreenFoodTypeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get createDonationScreenDescriptionLabel {
    return Intl.message(
      'Description',
      name: 'createDonationScreenDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Servings`
  String get createDonationScreenEstimatedServingsLabel {
    return Intl.message(
      'Estimated Servings',
      name: 'createDonationScreenEstimatedServingsLabel',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get createDonationScreenExpiryDateLabel {
    return Intl.message(
      'Expiry Date',
      name: 'createDonationScreenExpiryDateLabel',
      desc: '',
      args: [],
    );
  }

  /// `Contact Person`
  String get createDonationScreenContactPersonLabel {
    return Intl.message(
      'Contact Person',
      name: 'createDonationScreenContactPersonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Contact Phone`
  String get createDonationScreenContactPhoneLabel {
    return Intl.message(
      'Contact Phone',
      name: 'createDonationScreenContactPhoneLabel',
      desc: '',
      args: [],
    );
  }

  /// `Upload Food Images`
  String get createDonationScreenUploadImagesLabel {
    return Intl.message(
      'Upload Food Images',
      name: 'createDonationScreenUploadImagesLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter the food type.`
  String get createDonationScreenFoodTypeDescription {
    return Intl.message(
      'Enter the food type.',
      name: 'createDonationScreenFoodTypeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter a full description about the food.`
  String get createDonationScreenDescriptionDescription {
    return Intl.message(
      'Enter a full description about the food.',
      name: 'createDonationScreenDescriptionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter the number of servings.`
  String get createDonationScreenEstimatedServingsDescription {
    return Intl.message(
      'Enter the number of servings.',
      name: 'createDonationScreenEstimatedServingsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter the expiration date of the food.`
  String get createDonationScreenExpiryDateDescription {
    return Intl.message(
      'Enter the expiration date of the food.',
      name: 'createDonationScreenExpiryDateDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter a person name to contact.`
  String get createDonationScreenContactPersonDescription {
    return Intl.message(
      'Enter a person name to contact.',
      name: 'createDonationScreenContactPersonDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter the contact phone number.`
  String get createDonationScreenContactPhoneDescription {
    return Intl.message(
      'Enter the contact phone number.',
      name: 'createDonationScreenContactPhoneDescription',
      desc: '',
      args: [],
    );
  }

  /// `Submit Donation`
  String get createDonationScreenSubmitDonation {
    return Intl.message(
      'Submit Donation',
      name: 'createDonationScreenSubmitDonation',
      desc: '',
      args: [],
    );
  }

  /// `Charity Details`
  String get charityDetailsScreenTitle {
    return Intl.message(
      'Charity Details',
      name: 'charityDetailsScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Charity`
  String get charityDetailsScreenType {
    return Intl.message(
      'Charity',
      name: 'charityDetailsScreenType',
      desc: '',
      args: [],
    );
  }

  /// `Number of beneficiaries`
  String get charityDetailsScreenBeneficiariesNumber {
    return Intl.message(
      'Number of beneficiaries',
      name: 'charityDetailsScreenBeneficiariesNumber',
      desc: '',
      args: [],
    );
  }

  /// `Donate Now`
  String get charityDetailsScreenDonateButton {
    return Intl.message(
      'Donate Now',
      name: 'charityDetailsScreenDonateButton',
      desc: '',
      args: [],
    );
  }

  /// `Charity Story`
  String get CharityDetailsScreenStoryTitle {
    return Intl.message(
      'Charity Story',
      name: 'CharityDetailsScreenStoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get CharityDetailsScreenStoryReadMore {
    return Intl.message(
      'Read more',
      name: 'CharityDetailsScreenStoryReadMore',
      desc: '',
      args: [],
    );
  }

  /// `Read less`
  String get CharityDetailsScreenStoryReadLess {
    return Intl.message(
      'Read less',
      name: 'CharityDetailsScreenStoryReadLess',
      desc: '',
      args: [],
    );
  }

  /// `Campaigner`
  String get CharityDetailsScreenCampaignerTitle {
    return Intl.message(
      'Campaigner',
      name: 'CharityDetailsScreenCampaignerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Verified Account from`
  String get CharityDetailsScreenVerifiedAccount {
    return Intl.message(
      'Verified Account from',
      name: 'CharityDetailsScreenVerifiedAccount',
      desc: '',
      args: [],
    );
  }

  /// `Charity Documents`
  String get charityDetailsDocumentsBottomSheetTitle {
    return Intl.message(
      'Charity Documents',
      name: 'charityDetailsDocumentsBottomSheetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Proof Document`
  String get charityDetailsDocumentsBottomSheetProof {
    return Intl.message(
      'Proof Document',
      name: 'charityDetailsDocumentsBottomSheetProof',
      desc: '',
      args: [],
    );
  }

  /// `License Document`
  String get charityDetailsDocumentsBottomSheetLicense {
    return Intl.message(
      'License Document',
      name: 'charityDetailsDocumentsBottomSheetLicense',
      desc: '',
      args: [],
    );
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
