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

  /// `Home`
  String get restaurantHome {
    return Intl.message('Home', name: 'restaurantHome', desc: '', args: []);
  }

  /// `Donation`
  String get restaurantDonations {
    return Intl.message(
      'Donation',
      name: 'restaurantDonations',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get restaurantNotifications {
    return Intl.message(
      'Notification',
      name: 'restaurantNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get restaurantProfile {
    return Intl.message(
      'Profile',
      name: 'restaurantProfile',
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

  /// `New`
  String get New {
    return Intl.message('New', name: 'New', desc: '', args: []);
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

  /// `Let’s start sharing goodness`
  String get restaurantHomeScreenSubtitle {
    return Intl.message(
      'Let’s start sharing goodness',
      name: 'restaurantHomeScreenSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Nothing news about donation`
  String get restaurantNotificationsScreenTitle {
    return Intl.message(
      'Nothing news about donation',
      name: 'restaurantNotificationsScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can hear from the campaigner, let’s start donate!`
  String get restaurantNotificationsScreenSubtitle {
    return Intl.message(
      'You can hear from the campaigner, let’s start donate!',
      name: 'restaurantNotificationsScreenSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sharing Kindness`
  String get restaurantSharingKindness {
    return Intl.message(
      'Sharing Kindness',
      name: 'restaurantSharingKindness',
      desc: '',
      args: [],
    );
  }

  /// `All restaurant information`
  String get allRestaurantInformation {
    return Intl.message(
      'All restaurant information',
      name: 'allRestaurantInformation',
      desc: '',
      args: [],
    );
  }

  /// `Regular Donation`
  String get regularDonation {
    return Intl.message(
      'Regular Donation',
      name: 'regularDonation',
      desc: '',
      args: [],
    );
  }

  /// `For donation every day without forget`
  String get forDonationEveryDayWithoutForget {
    return Intl.message(
      'For donation every day without forget',
      name: 'forDonationEveryDayWithoutForget',
      desc: '',
      args: [],
    );
  }

  /// `Donation Reminder`
  String get donationReminder {
    return Intl.message(
      'Donation Reminder',
      name: 'donationReminder',
      desc: '',
      args: [],
    );
  }

  /// `Donation History`
  String get donationHistory {
    return Intl.message(
      'Donation History',
      name: 'donationHistory',
      desc: '',
      args: [],
    );
  }

  /// `Reservation Count`
  String get reservationCount {
    return Intl.message(
      'Reservation Count',
      name: 'reservationCount',
      desc: '',
      args: [],
    );
  }

  /// `Charity Name`
  String get charityName {
    return Intl.message(
      'Charity Name',
      name: 'charityName',
      desc: '',
      args: [],
    );
  }

  /// `Directions`
  String get directions {
    return Intl.message('Directions', name: 'directions', desc: '', args: []);
  }

  /// `Hope Foundation`
  String get allCharityInfoHopeFoundation {
    return Intl.message(
      'Hope Foundation',
      name: 'allCharityInfoHopeFoundation',
      desc: '',
      args: [],
    );
  }

  /// `Food donation pickup`
  String get foodDonationPickup {
    return Intl.message(
      'Food donation pickup',
      name: 'foodDonationPickup',
      desc: '',
      args: [],
    );
  }

  /// `Food Type`
  String get foodType {
    return Intl.message('Food Type', name: 'foodType', desc: '', args: []);
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message('Expiry Date', name: 'expiryDate', desc: '', args: []);
  }

  /// `Proof of Pickup`
  String get proofOfPickup {
    return Intl.message(
      'Proof of Pickup',
      name: 'proofOfPickup',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo of the food received`
  String get confirmPickupTakePhoto {
    return Intl.message(
      'Take a photo of the food received',
      name: 'confirmPickupTakePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Upload Photo`
  String get uploadPhoto {
    return Intl.message(
      'Upload Photo',
      name: 'uploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message('Required', name: 'required', desc: '', args: []);
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Donate`
  String get donate {
    return Intl.message('Donate', name: 'donate', desc: '', args: []);
  }

  /// `Donate Now`
  String get donateNow {
    return Intl.message('Donate Now', name: 'donateNow', desc: '', args: []);
  }

  /// `Donations`
  String get donations {
    return Intl.message('Donations', name: 'donations', desc: '', args: []);
  }

  /// `Charity`
  String get charity {
    return Intl.message('Charity', name: 'charity', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Campaign`
  String get campaign {
    return Intl.message('Campaign', name: 'campaign', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Capacity`
  String get capacity {
    return Intl.message('Capacity', name: 'capacity', desc: '', args: []);
  }

  /// `Schedule`
  String get schedule {
    return Intl.message('Schedule', name: 'schedule', desc: '', args: []);
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Servings`
  String get servings {
    return Intl.message('Servings', name: 'servings', desc: '', args: []);
  }

  /// `Status`
  String get status {
    return Intl.message('Status', name: 'status', desc: '', args: []);
  }

  /// `Search for orphanage or donation...`
  String get searchForOrphanageOrDonation {
    return Intl.message(
      'Search for orphanage or donation...',
      name: 'searchForOrphanageOrDonation',
      desc: '',
      args: [],
    );
  }

  /// `Monthly Donations Trend`
  String get charityStatisticsMonthlyDonationsTrend {
    return Intl.message(
      'Monthly Donations Trend',
      name: 'charityStatisticsMonthlyDonationsTrend',
      desc: '',
      args: [],
    );
  }

  /// `Food Categories Distribution`
  String get charityStatisticsFoodCategoriesDistribution {
    return Intl.message(
      'Food Categories Distribution',
      name: 'charityStatisticsFoodCategoriesDistribution',
      desc: '',
      args: [],
    );
  }

  /// `Charity Information`
  String get charityInformation {
    return Intl.message(
      'Charity Information',
      name: 'charityInformation',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Keep food at safe temperatures`
  String get foodSafetyTips_keep_food_safe {
    return Intl.message(
      'Keep food at safe temperatures',
      name: 'foodSafetyTips_keep_food_safe',
      desc: '',
      args: [],
    );
  }

  /// `Always avoid leaving food at room temperature`
  String get foodSafetyTips_keep_food_safe_sub {
    return Intl.message(
      'Always avoid leaving food at room temperature',
      name: 'foodSafetyTips_keep_food_safe_sub',
      desc: '',
      args: [],
    );
  }

  /// `Refrigerate leftovers quickly`
  String get foodSafetyTips_refrigerate_leftovers {
    return Intl.message(
      'Refrigerate leftovers quickly',
      name: 'foodSafetyTips_refrigerate_leftovers',
      desc: '',
      args: [],
    );
  }

  /// `Store leftovers within 2 hours of cooking`
  String get foodSafetyTips_refrigerate_leftovers_sub {
    return Intl.message(
      'Store leftovers within 2 hours of cooking',
      name: 'foodSafetyTips_refrigerate_leftovers_sub',
      desc: '',
      args: [],
    );
  }

  /// `Check expiration dates`
  String get foodSafetyTips_check_expiration {
    return Intl.message(
      'Check expiration dates',
      name: 'foodSafetyTips_check_expiration',
      desc: '',
      args: [],
    );
  }

  /// `Always verify dates before consuming or storing food`
  String get foodSafetyTips_check_expiration_sub {
    return Intl.message(
      'Always verify dates before consuming or storing food',
      name: 'foodSafetyTips_check_expiration_sub',
      desc: '',
      args: [],
    );
  }

  /// `Separate raw meat`
  String get foodSafetyTips_separate_raw_meat {
    return Intl.message(
      'Separate raw meat',
      name: 'foodSafetyTips_separate_raw_meat',
      desc: '',
      args: [],
    );
  }

  /// `Keep raw meat away from ready-to-eat foods in the fridge`
  String get foodSafetyTips_separate_raw_meat_sub {
    return Intl.message(
      'Keep raw meat away from ready-to-eat foods in the fridge',
      name: 'foodSafetyTips_separate_raw_meat_sub',
      desc: '',
      args: [],
    );
  }

  /// `Wash hands properly`
  String get foodSafetyTips_wash_hands {
    return Intl.message(
      'Wash hands properly',
      name: 'foodSafetyTips_wash_hands',
      desc: '',
      args: [],
    );
  }

  /// `Before and after handling any meal`
  String get foodSafetyTips_wash_hands_sub {
    return Intl.message(
      'Before and after handling any meal',
      name: 'foodSafetyTips_wash_hands_sub',
      desc: '',
      args: [],
    );
  }

  /// `Separate raw and cooked food`
  String get foodSafetyTips_separate_raw_cooked {
    return Intl.message(
      'Separate raw and cooked food',
      name: 'foodSafetyTips_separate_raw_cooked',
      desc: '',
      args: [],
    );
  }

  /// `Avoid mixing cooked meals with raw ingredients`
  String get foodSafetyTips_separate_raw_cooked_sub {
    return Intl.message(
      'Avoid mixing cooked meals with raw ingredients',
      name: 'foodSafetyTips_separate_raw_cooked_sub',
      desc: '',
      args: [],
    );
  }

  /// `Use clean utensils`
  String get foodSafetyTips_use_clean_utensils {
    return Intl.message(
      'Use clean utensils',
      name: 'foodSafetyTips_use_clean_utensils',
      desc: '',
      args: [],
    );
  }

  /// `Always handle food with sanitized tools`
  String get foodSafetyTips_use_clean_utensils_sub {
    return Intl.message(
      'Always handle food with sanitized tools',
      name: 'foodSafetyTips_use_clean_utensils_sub',
      desc: '',
      args: [],
    );
  }

  /// `Avoid cross-contamination`
  String get foodSafetyTips_avoid_cross_contamination {
    return Intl.message(
      'Avoid cross-contamination',
      name: 'foodSafetyTips_avoid_cross_contamination',
      desc: '',
      args: [],
    );
  }

  /// `Use separate cutting boards for meat and vegetables`
  String get foodSafetyTips_avoid_cross_contamination_sub {
    return Intl.message(
      'Use separate cutting boards for meat and vegetables',
      name: 'foodSafetyTips_avoid_cross_contamination_sub',
      desc: '',
      args: [],
    );
  }

  /// `Serve meals hygienically`
  String get foodSafetyTips_serve_hygienically {
    return Intl.message(
      'Serve meals hygienically',
      name: 'foodSafetyTips_serve_hygienically',
      desc: '',
      args: [],
    );
  }

  /// `Use clean utensils and dishes`
  String get foodSafetyTips_serve_hygienically_sub {
    return Intl.message(
      'Use clean utensils and dishes',
      name: 'foodSafetyTips_serve_hygienically_sub',
      desc: '',
      args: [],
    );
  }

  /// `Keep hot food hot`
  String get foodSafetyTips_keep_hot_food {
    return Intl.message(
      'Keep hot food hot',
      name: 'foodSafetyTips_keep_hot_food',
      desc: '',
      args: [],
    );
  }

  /// `Serve cooked food at temperatures above 60°C`
  String get foodSafetyTips_keep_hot_food_sub {
    return Intl.message(
      'Serve cooked food at temperatures above 60°C',
      name: 'foodSafetyTips_keep_hot_food_sub',
      desc: '',
      args: [],
    );
  }

  /// `Keep cold food cold`
  String get foodSafetyTips_keep_cold_food {
    return Intl.message(
      'Keep cold food cold',
      name: 'foodSafetyTips_keep_cold_food',
      desc: '',
      args: [],
    );
  }

  /// `Serve salads and desserts chilled below 5°C`
  String get foodSafetyTips_keep_cold_food_sub {
    return Intl.message(
      'Serve salads and desserts chilled below 5°C',
      name: 'foodSafetyTips_keep_cold_food_sub',
      desc: '',
      args: [],
    );
  }

  /// `Avoid touching food with bare hands`
  String get foodSafetyTips_avoid_touch_food {
    return Intl.message(
      'Avoid touching food with bare hands',
      name: 'foodSafetyTips_avoid_touch_food',
      desc: '',
      args: [],
    );
  }

  /// `Use gloves or utensils when serving`
  String get foodSafetyTips_avoid_touch_food_sub {
    return Intl.message(
      'Use gloves or utensils when serving',
      name: 'foodSafetyTips_avoid_touch_food_sub',
      desc: '',
      args: [],
    );
  }

  /// `Clean kitchen regularly`
  String get foodSafetyTips_clean_kitchen {
    return Intl.message(
      'Clean kitchen regularly',
      name: 'foodSafetyTips_clean_kitchen',
      desc: '',
      args: [],
    );
  }

  /// `Sanitize surfaces and tools daily`
  String get foodSafetyTips_clean_kitchen_sub {
    return Intl.message(
      'Sanitize surfaces and tools daily',
      name: 'foodSafetyTips_clean_kitchen_sub',
      desc: '',
      args: [],
    );
  }

  /// `Wash cutting boards`
  String get foodSafetyTips_wash_cutting_boards {
    return Intl.message(
      'Wash cutting boards',
      name: 'foodSafetyTips_wash_cutting_boards',
      desc: '',
      args: [],
    );
  }

  /// `Use hot soapy water after every use`
  String get foodSafetyTips_wash_cutting_boards_sub {
    return Intl.message(
      'Use hot soapy water after every use',
      name: 'foodSafetyTips_wash_cutting_boards_sub',
      desc: '',
      args: [],
    );
  }

  /// `Sanitize sponges and cloths`
  String get foodSafetyTips_sanitize_cloths {
    return Intl.message(
      'Sanitize sponges and cloths',
      name: 'foodSafetyTips_sanitize_cloths',
      desc: '',
      args: [],
    );
  }

  /// `Replace or sanitize kitchen cloths frequently`
  String get foodSafetyTips_sanitize_cloths_sub {
    return Intl.message(
      'Replace or sanitize kitchen cloths frequently',
      name: 'foodSafetyTips_sanitize_cloths_sub',
      desc: '',
      args: [],
    );
  }

  /// `Keep trash bins closed`
  String get foodSafetyTips_keep_trash_closed {
    return Intl.message(
      'Keep trash bins closed',
      name: 'foodSafetyTips_keep_trash_closed',
      desc: '',
      args: [],
    );
  }

  /// `Prevent bacteria and odors from spreading`
  String get foodSafetyTips_keep_trash_closed_sub {
    return Intl.message(
      'Prevent bacteria and odors from spreading',
      name: 'foodSafetyTips_keep_trash_closed_sub',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get filterAll {
    return Intl.message('All', name: 'filterAll', desc: '', args: []);
  }

  /// `Storage`
  String get filterStorage {
    return Intl.message('Storage', name: 'filterStorage', desc: '', args: []);
  }

  /// `Handling`
  String get filterHandling {
    return Intl.message('Handling', name: 'filterHandling', desc: '', args: []);
  }

  /// `Serving`
  String get filterServing {
    return Intl.message('Serving', name: 'filterServing', desc: '', args: []);
  }

  /// `Cleaning`
  String get filterCleaning {
    return Intl.message('Cleaning', name: 'filterCleaning', desc: '', args: []);
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
