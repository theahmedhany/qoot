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

  /// [Donation]
  /// used also in auth to check if the volunteer is registered or not
  static const String getRestaurantDonationHistory = '/Donation/my-donations';

  /// [Restaurant]
  /// used in auth to check if the restaurant is registered or not
  static const String getMyRestaurant = '/Restaurant/my-restaurant';
}
