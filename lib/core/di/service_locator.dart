import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/dio_factory.dart';
import 'package:qoot/core/network/network_manager.dart';
import 'package:qoot/core/services/storage/charity_local_storage.dart';
import 'package:qoot/features/all_charities/data/repos/all_charities_repo.dart';
import 'package:qoot/features/all_restaurants/data/repos/restaurnt_donations_by_id_repo.dart';
import 'package:qoot/features/all_restaurants/presentation/logic/restaurant_donations/restaurant_donations_cubit.dart';
import 'package:qoot/features/auth/register_charity/domain/repositories/register_charity_repository.dart';
import 'package:qoot/features/auth/register_charity/presentation/logic/cubit/register_charity_cubit.dart';
import 'package:qoot/features/charity_info/data/repos/get_charity_info_repo.dart';
import 'package:qoot/features/charity_info/data/repos/update_charity_info_repo.dart';
import 'package:qoot/features/charity_info/presentation/logic/get_charity/get_charity_cubit.dart';
import 'package:qoot/features/create_donation/data/repos/create_donation_repo.dart';
import 'package:qoot/features/donation_details/data/repos/create_reservation_repo.dart';
import 'package:qoot/features/donation_details/presentation/logic/create_reservation/create_reservation_cubit.dart';
import 'package:qoot/features/restaurant_donation/data/repos/restaurant_donation_repo_impl.dart';
import 'package:qoot/features/restaurant_home/data/repos/restaurant_home_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/all_restaurants/data/repos/restaurants_with_donations_repo.dart';
import '../../features/all_restaurants/presentation/logic/restaurants_with_donations/restaurants_with_donations_cubit.dart';
import '../../features/auth/confirm_email/data/repositories/confirm_email_repository.dart';
import '../../features/auth/confirm_email/presentation/logic/cubit/confirm_email_cubit.dart';
import '../../features/auth/login/data/repositories/login_repository_impl.dart';
import '../../features/auth/login/data/repositories/my_charity_repository_impl.dart';
import '../../features/auth/login/data/repositories/my_restaurant_repository_impl.dart';
import '../../features/auth/login/data/sources/my_charity_remote_data_source.dart';
import '../../features/auth/login/domain/repositories/login_repository.dart';
import '../../features/auth/login/domain/repositories/my_charity_repository.dart';
import '../../features/auth/login/domain/repositories/my_restaurant_repository.dart';
import '../../features/auth/login/presentation/controllers/my_restaurant_controller.dart';
import '../../features/auth/login/presentation/logic/cubit/login_cubit.dart';
import '../../features/auth/register_account/data/data_source/register_local_data_source.dart';
import '../../features/auth/register_account/data/data_source/register_remote_data_source.dart';
import '../../features/auth/register_account/data/repositories/register_repository_impl.dart';
import '../../features/auth/register_account/domain/repositories/register_repository.dart';
import '../../features/auth/register_account/domain/usecases/register_usecase.dart';
import '../../features/auth/register_account/presentation/logic/cubit/register_cubit.dart';
import '../../features/auth/register_restaurant/data/repository/register_restaurant_repository_impl.dart';
import '../../features/auth/register_restaurant/domain/repository/register_restaurant_repository.dart';
import '../../features/auth/register_restaurant/domain/usecases/register_restaurant_usecase.dart';
import '../../features/auth/register_restaurant/presentation/logic/cubit/register_restaurant_cubit.dart';
import '../../features/auth/reset_password/data/repository/reset_password_repository_impl.dart';
import '../../features/auth/reset_password/domain/repository/reset_password_repository.dart';
import '../../features/auth/reset_password/presentation/logic/cubit/reset_password_cubit.dart';
import '../../features/auth/send_email_confirmation/data/data_source/send_email_confirmation_remote_data_source.dart';
import '../../features/auth/send_email_confirmation/data/repositories/send_email_confirmation_repository.dart';
import '../../features/auth/send_email_confirmation/presentation/logic/cubit/send_email_confirmation_cubit.dart';
import '../../features/auth/send_email_reset_password/data/repository/forget_password_repository_impl.dart';
import '../../features/auth/send_email_reset_password/domain/repository/forget_password_repository.dart';
import '../../features/auth/send_email_reset_password/presentation/logic/cubit/forget_password_cubit.dart';
import '../../features/charity_donations/data/repos/get_available_donation_repo.dart';
import '../../features/charity_donations/presentation/logic/get_available_donations/get_available_donations_cubit.dart';
import '../../features/charity_info/data/repos/delete_charity_repo.dart';
import '../../features/charity_info/presentation/logic/delete_charity/delete_charity_cubit.dart';
import '../../features/charity_info/presentation/logic/update_charity/update_charity_cubit.dart';
import '../../features/charity_reservations/data/repos/charity_reservations_repo.dart';
import '../../features/charity_reservations/data/repos/donation_images_repo.dart';
import '../../features/charity_reservations/presentation/logic/charity_reservations/charity_reservations_cubit.dart';
import '../../features/charity_reservations/presentation/logic/donation_images/donation_images_cubit.dart';
import '../../features/donation_details/data/repos/donation_details_repo.dart';
import '../../features/donation_details/presentation/logic/donation_details/donation_details_cubit.dart';
import '../../features/onboarding/presentation/logic/cubit/onboarding_cubit.dart';
import '../helpers/secure_storage_helper.dart';
import '../helpers/shared_pref_helper.dart';
import '../middlewares/cubit/auth_middleware_cubit.dart';
import '../services/storage/auth_local_storage.dart';

final getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  final sharedPrefs = await SharedPrefHelper.init();

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );
  getIt.registerLazySingleton<SecureStorageHelper>(
    () => SecureStorageHelper(getIt<FlutterSecureStorage>()),
  );

  getIt.registerLazySingleton<Connectivity>(() => Connectivity());

  getIt.registerLazySingleton<NetworkManager>(() => NetworkManager());

  getIt.registerLazySingleton<DioFactory>(() => DioFactory());

  final dio = await getIt<DioFactory>().createDio();
  getIt.registerLazySingleton<Dio>(() => dio);

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<Dio>()));

  getIt.registerLazySingleton<ApiHandler>(() => ApiHandler());

  getIt.registerSingleton<OnboardingCubit>(OnboardingCubit());

  getIt.registerLazySingleton<RegisterRemoteDataSource>(
    () => RegisterRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<RegisterCubit>(
    () => RegisterCubit(getIt<RegisterUseCase>()),
  );

  getIt.registerFactory<AuthMiddlewareCubit>(() => AuthMiddlewareCubit());

  getIt.registerLazySingleton<AuthLocalStorage>(() => AuthLocalStorage());

  getIt.registerLazySingleton<RegisterLocalDataSource>(
    () => RegisterLocalDataSourceImpl(getIt<AuthLocalStorage>()),
  );

  getIt.registerLazySingleton<RegisterRepository>(
    () => RegisterRepositoryImpl(
      getIt<RegisterRemoteDataSource>(),
      getIt<RegisterLocalDataSource>(),
    ),
  );

  getIt.registerLazySingleton(
    () => RegisterUseCase(getIt<RegisterRepository>()),
  );

  getIt.registerFactory(
    () => SendEmailConfirmationCubit(
      getIt<SendEmailConfirmationRepository>(),
    ),
  );
  getIt.registerLazySingleton(
    () => SendEmailConfirmationRepository(
      remoteDataSource: getIt<SendEmailConfirmationRemoteDataSource>(),
      apiHandler: getIt<ApiHandler>(),
    ),
  );
  getIt.registerLazySingleton(
    () => SendEmailConfirmationRemoteDataSource(
      getIt<ApiClient>(),
    ),
  );

  getIt.registerLazySingleton(() => ConfirmEmailRepository());
  getIt.registerFactory(
    () => ConfirmEmailCubit(getIt<ConfirmEmailRepository>()),
  );

  getIt.registerLazySingleton(
    () => RegisterCharityRepository(getIt<ApiClient>(), getIt<ApiHandler>()),
  );
  getIt.registerFactory<RegisterCharityCubit>(
    () => RegisterCharityCubit(getIt<RegisterCharityRepository>()),
  );

  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt<ApiHandler>(), getIt<ApiClient>()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt<LoginRepository>()),
  );

  getIt.registerLazySingleton<MyCharityRemoteDataSource>(
    () => MyCharityRemoteDataSource(getIt<ApiClient>(), getIt<ApiHandler>()),
  );
  getIt.registerLazySingleton<MyCharityRepository>(
    () => MyCharityRepositoryImpl(getIt<MyCharityRemoteDataSource>()),
  );

  getIt.registerLazySingleton<RegisterRestaurantRepository>(
    () => RegisterRestaurantRepositoryImpl(
      getIt<ApiClient>(),
      getIt<ApiHandler>(),
    ),
  );

  getIt.registerLazySingleton<RegisterRestaurantUseCase>(
    () => RegisterRestaurantUseCase(getIt<RegisterRestaurantRepository>()),
  );

  getIt.registerFactory<RegisterRestaurantCubit>(
    () => RegisterRestaurantCubit(getIt<RegisterRestaurantUseCase>()),
  );

  getIt.registerLazySingleton<MyRestaurantRepository>(
    () => MyRestaurantRepositoryImpl(getIt<ApiHandler>(), getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<MyRestaurantController>(
    () => MyRestaurantController(getIt<MyRestaurantRepository>()),
  );

  getIt.registerLazySingleton<ForgetPasswordRepository>(
    () => ForgetPasswordRepositoryImpl(
      apiClient: getIt<ApiClient>(),
      apiHandler: getIt<ApiHandler>(),
    ),
  );

  getIt.registerFactory<ForgetPasswordCubit>(
    () => ForgetPasswordCubit(getIt<ForgetPasswordRepository>()),
  );

  getIt.registerLazySingleton<ResetPasswordRepository>(
    () => ResetPasswordRepositoryImpl(),
  );
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit());

  getIt.registerLazySingleton<RestaurantHomeRepoImpl>(
    () => RestaurantHomeRepoImpl(getIt(), getIt()),
  );

  getIt.registerLazySingleton<RestaurantDonationRepoImpl>(
    () => RestaurantDonationRepoImpl(getIt(), getIt()),
  );

  getIt.registerLazySingleton<AllCharitiesRepo>(
    () => AllCharitiesRepo(getIt(), getIt()),
  );

  getIt.registerLazySingleton<CreateDonationRepo>(
    () => CreateDonationRepo(getIt()),
  );

  getIt.registerLazySingleton(
    () => GetCharityInfoRepo(getIt(), getIt()),
  );
  getIt.registerFactory<GetCharityCubit>(
    () => GetCharityCubit(getIt<GetCharityInfoRepo>()),
  );

  getIt.registerLazySingleton(
    () => UpdateCharityRepo(getIt(), getIt()),
  );
  getIt.registerFactory(
    () => UpdateCharityCubit(getIt()),
  );

  getIt.registerLazySingleton(
    () => DeleteCharityRepo(getIt(), getIt()),
  );
  getIt.registerFactory(
    () => DeleteCharityCubit(getIt()),
  );

  getIt.registerLazySingleton(
    () => GetAvailableDonationRepo(getIt(), getIt()),
  );
  getIt.registerLazySingleton<GetAvailableDonationsCubit>(
    () => GetAvailableDonationsCubit(getIt()),
  );

  getIt.registerLazySingleton(
    () => CharityReservationsRepo(
      getIt(),
      getIt(),
    ),
  );
  getIt.registerLazySingleton<CharityReservationsCubit>(
    () => CharityReservationsCubit(getIt()),
  );

  getIt.registerLazySingleton(
    () => DonationImagesRepo(getIt(), getIt()),
  );
  getIt.registerFactory<DonationImagesCubit>(
    () => DonationImagesCubit(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => DonationDetailsRepo(
      getIt(),
      getIt(),
    ),
  );
  getIt.registerFactory<DonationDetailsCubit>(
    () => DonationDetailsCubit(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => CreateReservationRepo(
      getIt(),
      getIt(),
    ),
  );
  getIt.registerFactory<CreateReservationCubit>(
    () => CreateReservationCubit(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<CharityLocalStorage>(() => CharityLocalStorage());

  getIt.registerLazySingleton(
    () => RestaurantsWithDonationsRepo(
      getIt(),
      getIt(),
    ),
  );
  getIt.registerFactory<RestaurantsWithDonationsCubit>(
    () => RestaurantsWithDonationsCubit(
      getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => RestaurntDonationsByIdRepo(
      getIt(),
      getIt(),
    ),
  );
  getIt.registerFactory<RestaurantDonationsCubit>(
    () => RestaurantDonationsCubit(getIt()),
  );
}
