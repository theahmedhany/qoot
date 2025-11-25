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

  /// `Restaurant Name`
  String get restaurantName {
    return Intl.message(
      'Restaurant Name',
      name: 'restaurantName',
      desc: '',
      args: [],
    );
  }

  /// `Edit Restaurant Info`
  String get editRestaurantInfo {
    return Intl.message(
      'Edit Restaurant Info',
      name: 'editRestaurantInfo',
      desc: '',
      args: [],
    );
  }

  /// `Delete Restaurant`
  String get deleteRestaurant {
    return Intl.message(
      'Delete Restaurant',
      name: 'deleteRestaurant',
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

  /// `Coordinates`
  String get coordinates {
    return Intl.message('Coordinates', name: 'coordinates', desc: '', args: []);
  }

  /// `All Charity Info Hope Foundation`
  String get allCharityInfoHopeFoundation {
    return Intl.message(
      'All Charity Info Hope Foundation',
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

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login Account`
  String get loginAccount {
    return Intl.message(
      'Login Account',
      name: 'loginAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signInWithApple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with`
  String get continueWith {
    return Intl.message(
      'Continue with',
      name: 'continueWith',
      desc: '',
      args: [],
    );
  }

  /// `Choose account type`
  String get chooseAccountType {
    return Intl.message(
      'Choose account type',
      name: 'chooseAccountType',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant`
  String get restaurant {
    return Intl.message('Restaurant', name: 'restaurant', desc: '', args: []);
  }

  /// `Volunteer`
  String get volunteer {
    return Intl.message('Volunteer', name: 'volunteer', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Signup Account`
  String get signupAccount {
    return Intl.message(
      'Signup Account',
      name: 'signupAccount',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get yourEmail {
    return Intl.message('Your email', name: 'yourEmail', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Your password`
  String get yourPassword {
    return Intl.message(
      'Your password',
      name: 'yourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your full name`
  String get yourFullName {
    return Intl.message(
      'Your full name',
      name: 'yourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number`
  String get yourPhoneNumber {
    return Intl.message(
      'Your phone number',
      name: 'yourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with`
  String get signInWith {
    return Intl.message('Sign in with', name: 'signInWith', desc: '', args: []);
  }

  /// `Do not have an account?`
  String get doNotHaveAccount {
    return Intl.message(
      'Do not have an account?',
      name: 'doNotHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get signup {
    return Intl.message('Signup', name: 'signup', desc: '', args: []);
  }

  /// `Forget Password`
  String get forgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email to reset your password`
  String get pleaseEnterEmailToReset {
    return Intl.message(
      'Please enter your email to reset your password',
      name: 'pleaseEnterEmailToReset',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password.`
  String get enterNewPassword {
    return Intl.message(
      'Enter your new password.',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your confirm password.`
  String get enterConfirmPassword {
    return Intl.message(
      'Enter your confirm password.',
      name: 'enterConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords are not equal`
  String get passwordsNotEqual {
    return Intl.message(
      'Passwords are not equal',
      name: 'passwordsNotEqual',
      desc: '',
      args: [],
    );
  }

  /// `Please create a new password. Ensure it is different from previous ones for security.`
  String get pleaseCreateNewPassword {
    return Intl.message(
      'Please create a new password. Ensure it is different from previous ones for security.',
      name: 'pleaseCreateNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations.`
  String get congratulations {
    return Intl.message(
      'Congratulations.',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Okey`
  String get okey {
    return Intl.message('Okey', name: 'okey', desc: '', args: []);
  }

  /// `There was an error.`
  String get thereWasError {
    return Intl.message(
      'There was an error.',
      name: 'thereWasError',
      desc: '',
      args: [],
    );
  }

  /// `Charity Register`
  String get charityRegister {
    return Intl.message(
      'Charity Register',
      name: 'charityRegister',
      desc: '',
      args: [],
    );
  }

  /// `Enter charity name.`
  String get enterCharityName {
    return Intl.message(
      'Enter charity name.',
      name: 'enterCharityName',
      desc: '',
      args: [],
    );
  }

  /// `Enter charity address.`
  String get enterCharityAddress {
    return Intl.message(
      'Enter charity address.',
      name: 'enterCharityAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter charity capacity.`
  String get enterCharityCapacity {
    return Intl.message(
      'Enter charity capacity.',
      name: 'enterCharityCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Enter charity type.`
  String get enterCharityType {
    return Intl.message(
      'Enter charity type.',
      name: 'enterCharityType',
      desc: '',
      args: [],
    );
  }

  /// `Enter a full description about charity.`
  String get enterFullDescriptionCharity {
    return Intl.message(
      'Enter a full description about charity.',
      name: 'enterFullDescriptionCharity',
      desc: '',
      args: [],
    );
  }

  /// `License`
  String get license {
    return Intl.message('License', name: 'license', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Location Permission`
  String get locationPermission {
    return Intl.message(
      'Location Permission',
      name: 'locationPermission',
      desc: '',
      args: [],
    );
  }

  /// `please , give the app the permission to access your location`
  String get pleaseGiveLocationPermission {
    return Intl.message(
      'please , give the app the permission to access your location',
      name: 'pleaseGiveLocationPermission',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Restaurant Register`
  String get restaurantRegister {
    return Intl.message(
      'Restaurant Register',
      name: 'restaurantRegister',
      desc: '',
      args: [],
    );
  }

  /// `Enter restaurant name.`
  String get enterRestaurantName {
    return Intl.message(
      'Enter restaurant name.',
      name: 'enterRestaurantName',
      desc: '',
      args: [],
    );
  }

  /// `Enter restaurant address.`
  String get enterRestaurantAddress {
    return Intl.message(
      'Enter restaurant address.',
      name: 'enterRestaurantAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter a full description about restaurant.`
  String get enterFullDescriptionRestaurant {
    return Intl.message(
      'Enter a full description about restaurant.',
      name: 'enterFullDescriptionRestaurant',
      desc: '',
      args: [],
    );
  }

  /// `Commercial Register`
  String get commercialRegister {
    return Intl.message(
      'Commercial Register',
      name: 'commercialRegister',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Email`
  String get sendVerificationEmail {
    return Intl.message(
      'Send Verification Email',
      name: 'sendVerificationEmail',
      desc: '',
      args: [],
    );
  }

  /// `we have sent a confirmation email to `
  String get weHaveSentConfirmationEmail {
    return Intl.message(
      'we have sent a confirmation email to ',
      name: 'weHaveSentConfirmationEmail',
      desc: '',
      args: [],
    );
  }

  /// `please check your inbox and click on the link to verify your email address.`
  String get pleaseCheckInbox {
    return Intl.message(
      'please check your inbox and click on the link to verify your email address.',
      name: 'pleaseCheckInbox',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get backToLogin {
    return Intl.message(
      'Back to Login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Email sent successfully`
  String get emailSentSuccessfully {
    return Intl.message(
      'Email sent successfully',
      name: 'emailSentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Some Error happend`
  String get someErrorHappened {
    return Intl.message(
      'Some Error happend',
      name: 'someErrorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Resend Email`
  String get resendEmail {
    return Intl.message(
      'Resend Email',
      name: 'resendEmail',
      desc: '',
      args: [],
    );
  }

  /// `We will send an `
  String get weWillSendEmail {
    return Intl.message(
      'We will send an ',
      name: 'weWillSendEmail',
      desc: '',
      args: [],
    );
  }

  /// `email to `
  String get emailTo {
    return Intl.message('email to ', name: 'emailTo', desc: '', args: []);
  }

  /// `with instructions to reset your password`
  String get withInstructionsToReset {
    return Intl.message(
      'with instructions to reset your password',
      name: 'withInstructionsToReset',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Email`
  String get confirmEmail {
    return Intl.message(
      'Confirm Email',
      name: 'confirmEmail',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNow {
    return Intl.message('Start Now', name: 'startNow', desc: '', args: []);
  }

  /// `you can recive new message by login again`
  String get youCanReceiveNewMessage {
    return Intl.message(
      'you can recive new message by login again',
      name: 'youCanReceiveNewMessage',
      desc: '',
      args: [],
    );
  }

  /// `Login Again`
  String get loginAgain {
    return Intl.message('Login Again', name: 'loginAgain', desc: '', args: []);
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Reduce Waste`
  String get onboardingTitle1 {
    return Intl.message(
      'Reduce Waste',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Every day, tons of food go to waste while thousands of people are in need, Join us in turning surplus food into meaningful meals`
  String get onboardingSubtitle1 {
    return Intl.message(
      'Every day, tons of food go to waste while thousands of people are in need, Join us in turning surplus food into meaningful meals',
      name: 'onboardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Simple & Effective`
  String get onboardingTitle2 {
    return Intl.message(
      'Simple & Effective',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Through the app, restaurants and individuals can donate surplus food safely to orphanages. Restaurants donate... Orphanages receive... Volunteers deliver.`
  String get onboardingSubtitle2 {
    return Intl.message(
      'Through the app, restaurants and individuals can donate surplus food safely to orphanages. Restaurants donate... Orphanages receive... Volunteers deliver.',
      name: 'onboardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Make an Impact`
  String get onboardingTitle3 {
    return Intl.message(
      'Make an Impact',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `More meals, less waste, happier hearts. Help feed the needy, support the community, and protect the environment.`
  String get onboardingSubtitle3 {
    return Intl.message(
      'More meals, less waste, happier hearts. Help feed the needy, support the community, and protect the environment.',
      name: 'onboardingSubtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
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
