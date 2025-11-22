import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:qoot/core/network/api_client.dart';
import 'package:qoot/core/network/api_handler.dart';
import 'package:qoot/core/network/dio_factory.dart';
import 'package:qoot/core/network/network_manager.dart';
import 'package:qoot/features/all_charities/data/repos/all_charities_repo.dart';
import 'package:qoot/features/auth/register_charity/domain/repositories/register_charity_repository.dart';
import 'package:qoot/features/auth/register_charity/presentation/logic/cubit/register_charity_cubit.dart';
import 'package:qoot/features/create_donation/data/repos/create_donation_repo.dart';
import 'package:qoot/features/restaurant_donation/data/repos/restaurant_donation_repo_impl.dart';
import 'package:qoot/features/restaurant_home/data/repos/restaurant_home_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
import '../../features/onboarding/presentation/logic/cubit/onboarding_cubit.dart';
import '../helpers/secure_storage_helper.dart';
import '../helpers/shared_pref_helper.dart';
import '../middlewares/cubit/auth_middleware_cubit.dart';
import '../services/storage/auth_local_storage.dart';

final getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  /* ******************************************[Shared preferences]*************************************************** */
  ///[shared_preferences]
  // Initialize SharedPreferences
  final sharedPrefs = await SharedPrefHelper.init();
  // Register it as a singleton
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  /* ******************************************[secure storage]*************************************************** */
  ///[flutter_secure_storage]
  // Register SecureStorageHelper
  // Secure Storage
  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );
  getIt.registerLazySingleton<SecureStorageHelper>(
    () => SecureStorageHelper(getIt<FlutterSecureStorage>()),
  );

  /* ******************************************[Network manager]*************************************************** */
  ///[network]
  // network connectivity
  getIt.registerLazySingleton<Connectivity>(() => Connectivity());
  // Network Manager
  getIt.registerLazySingleton<NetworkManager>(() => NetworkManager());

  /* ******************************************[ Dio ]*************************************************** */
  ///[dio]
  // Dio Factory and Api Client
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());
  // Dio Instance
  final dio = await getIt<DioFactory>().createDio();
  getIt.registerLazySingleton<Dio>(() => dio);

  /* ***************************************[ Api client & Api handler]*************************************** */

  // Api Client and Handler
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<Dio>()));
  // Api Handler
  getIt.registerLazySingleton<ApiHandler>(() => ApiHandler());

  /* ******************************************[onboarding]*************************************************** */
  ///[cubits]
  /// Onboarding Cubit
  getIt.registerSingleton<OnboardingCubit>(OnboardingCubit());

  /* ******************************************[register di]*************************************************** */
  ///[use cases, repositories, data sources]
  // Register other use cases, repositories, and data sources here as needed
  // Register Retrofit data source
  getIt.registerLazySingleton<RegisterRemoteDataSource>(
    () => RegisterRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  ///[auth register account]
  getIt.registerLazySingleton<RegisterCubit>(
    () => RegisterCubit(getIt<RegisterUseCase>()),
  );

  /* ******************************************[Auth Middleware]************************************************ */
  // Auth Middleware Cubit
  getIt.registerFactory<AuthMiddlewareCubit>(() => AuthMiddlewareCubit());

  /* ******************************************[Auth local Storage]*************************************************** */
  //auth local storage
  getIt.registerLazySingleton<AuthLocalStorage>(() => AuthLocalStorage());

  /* ******************************************[register di]*************************************************** */
  // Register local data source
  getIt.registerLazySingleton<RegisterLocalDataSource>(
    () => RegisterLocalDataSourceImpl(getIt<AuthLocalStorage>()),
  );
  // Repository impl
  getIt.registerLazySingleton<RegisterRepository>(
    () => RegisterRepositoryImpl(
      getIt<RegisterRemoteDataSource>(),
      getIt<RegisterLocalDataSource>(),
    ),
  );
  // UseCase
  getIt.registerLazySingleton(
    () => RegisterUseCase(getIt<RegisterRepository>()),
  );
  // Cubit (as factory so new instance created on each provider)

  /* ******************************************[email confirmation di]*************************************************** */
  /// Send Email Confirmation Cubit, Repository, Data Source
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

  /* **************************[ confirm email di]*************************************************** */
  getIt.registerLazySingleton(() => ConfirmEmailRepository());
  getIt.registerFactory(
    () => ConfirmEmailCubit(getIt<ConfirmEmailRepository>()),
  );

  /* *****************************[register charity]*************************************************** */
  getIt.registerLazySingleton(
    () => RegisterCharityRepository(getIt<ApiClient>(), getIt<ApiHandler>()),
  );
  getIt.registerFactory<RegisterCharityCubit>(
    () => RegisterCharityCubit(getIt<RegisterCharityRepository>()),
  );

  /* ******************************************[login]*************************************************** */
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt<ApiHandler>(), getIt<ApiClient>()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt<LoginRepository>()),
  );

  /* ******************************************[ my charity ]*************************************************** */
  getIt.registerLazySingleton<MyCharityRemoteDataSource>(
    () => MyCharityRemoteDataSource(getIt<ApiClient>(), getIt<ApiHandler>()),
  );
  getIt.registerLazySingleton<MyCharityRepository>(
    () => MyCharityRepositoryImpl(getIt<MyCharityRemoteDataSource>()),
  );

  /* ******************************************[ restaurant register ]*************************************************** */
  // Repositories
  getIt.registerLazySingleton<RegisterRestaurantRepository>(
    () => RegisterRestaurantRepositoryImpl(
      getIt<ApiClient>(),
      getIt<ApiHandler>(),
    ),
  );

  // Use Cases
  getIt.registerLazySingleton<RegisterRestaurantUseCase>(
    () => RegisterRestaurantUseCase(getIt<RegisterRestaurantRepository>()),
  );

  // Cubits
  getIt.registerFactory<RegisterRestaurantCubit>(
    () => RegisterRestaurantCubit(getIt<RegisterRestaurantUseCase>()),
  );

  /* ******************************************[ my restaurant ]*************************************************** */

  // My Restaurant Feature
  getIt.registerLazySingleton<MyRestaurantRepository>(
    () => MyRestaurantRepositoryImpl(getIt<ApiHandler>(), getIt<ApiClient>()),
  );

  getIt.registerLazySingleton<MyRestaurantController>(
    () => MyRestaurantController(getIt<MyRestaurantRepository>()),
  );

  /* *********************************[ forget password ]*************************************************** */
  getIt.registerLazySingleton<ForgetPasswordRepository>(
    () => ForgetPasswordRepositoryImpl(
      apiClient: getIt<ApiClient>(),
      apiHandler: getIt<ApiHandler>(),
    ),
  );

  getIt.registerFactory<ForgetPasswordCubit>(
    () => ForgetPasswordCubit(getIt<ForgetPasswordRepository>()),
  );

  /* *********************************[ reset password ]*************************************************** */
  getIt.registerLazySingleton<ResetPasswordRepository>(
    () => ResetPasswordRepositoryImpl(),
  );
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit());

  /* *********************************[ Nearby Charity ]*************************************************** */
  getIt.registerLazySingleton<RestaurantHomeRepoImpl>(
    () => RestaurantHomeRepoImpl(getIt(), getIt()),
  );

  /* *********************************[ Restaurant Donation History ]*************************************************** */
  getIt.registerLazySingleton<RestaurantDonationRepoImpl>(
    () => RestaurantDonationRepoImpl(getIt(), getIt()),
  );

  /* *********************************[ All Charities ]*************************************************** */
  getIt.registerLazySingleton<AllCharitiesRepo>(
    () => AllCharitiesRepo(getIt(), getIt()),
  );

  /* *********************************[ Create Donation ]*************************************************** */
  getIt.registerLazySingleton<CreateDonationRepo>(
    () => CreateDonationRepo(getIt()),
  );
}
