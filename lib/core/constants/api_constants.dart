class ApiConstants {
  ApiConstants._();

  ///[Base_url]
  static const String baseUrl = 'https://qoot.runasp.net/api';
  static const String imageBaseUrl = 'https://qoot.runasp.net';

  ///[Endpoints]
  ///auth endpoints
  static const String register = '/Auth/register';
  static const String login = '/Auth/login';
  static const String sendEmailConfirmation = '/Auth/send-email-confirmation';
  static const String confirmEmail = '/Auth/confirm-email';
  static const String forgetPassword = '/Auth/forget-password';
  static const String resetPassword = '/Auth/reset-password';
  static const String registerCharity = '/Charity/register';
  static const String registerRestaurant = '/Restaurant/register';

  /// [Charity]
  /// used also in auth to check if the charit is registered or not
  static const String getMyCharity = '/Charity/my-charity';
  static const String getNearbyCharities = '/Charity/nearby';
  static const String availableDonations = '/Donation/available';
  static const String charityReservations = '/Reservation/my-reservations';
  static const String charityTypes = '/Charity/types';
  static const String donationImages = '/Donation/{donationId}/images';
  static const String updateChairtyInfo = '/Charity/my-charity';

  /// [Donation]
  /// used also in auth to check if the volunteer is registered or not
  static const String getRestaurantDonationHistory = '/Donation/my-donations';
  static const String donationDetails = '/Donation/{donationId}';

  /// [Restaurant]
  /// used in auth to check if the restaurant is registered or not
  static const String getMyRestaurant = '/Restaurant/my-restaurant';
  static const String getNearbyRestaurants = '/Restaurant/nearby';
  static const String restaurantWithDonations = '/Restaurant/with-donations';

  /// [Reservation]
  static const String createReservation = '/Reservation';
}
