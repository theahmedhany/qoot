class ApiConstants {
  ApiConstants._();

  // Base URLs
  static const String baseUrl = 'https://qoot.runasp.net/api';
  static const String imageBaseUrl = 'https://qoot.runasp.net';

  // Auth Endpoints
  static const String register = '/Auth/register';
  static const String login = '/Auth/login';
  static const String sendEmailConfirmation = '/Auth/send-email-confirmation';
  static const String confirmEmail = '/Auth/confirm-email';
  static const String forgetPassword = '/Auth/forget-password';
  static const String resetPassword = '/Auth/reset-password';
  static const String registerCharity = '/Charity/register';
  static const String registerRestaurant = '/Restaurant/register';

  // Charity Endpoints
  static const String getMyCharity = '/Charity/my-charity';
  static const String getNearbyCharities = '/Charity/nearby';
  static const String allCharities = '/Charity/nearby';
  static const String availableDonations = '/Donation/available';
  static const String charityReservations = '/Reservation/my-reservations';
  static const String charityTypes = '/Charity/types';
  static const String donationImages = '/Donation/{donationId}/images';
  static const String updateChairtyInfo = '/Charity/my-charity';

  // Donation Endpoints
  static const String getRestaurantDonationHistory = '/Donation/my-donations';
  static const String createDonation = '/Donation';
  static const String donationDetails = '/Donation/{donationId}';

  // Restaurant Endpoints
  static const String getMyRestaurant = '/Restaurant/my-restaurant';
  static const String getNearbyRestaurants = '/Restaurant/nearby';
  static const String restaurantWithDonations = '/Restaurant/with-donations';

  // Reservation Endpoints
  static const String createReservation = '/Reservation';
}
