import 'package:get_it/get_it.dart';
import 'package:pookaboo/layers/presentation/cubit/app/app_cubit.dart';
import 'package:pookaboo/layers/data/repositories/auth/auth_repository_impl.dart';
import 'package:pookaboo/layers/domain/repositories/auth/auth_repository.dart';
import 'package:pookaboo/layers/domain/usecases/auth/auth_usecase.dart';
import 'package:pookaboo/layers/presentation/bloc/auth/auth_bloc.dart';
import 'package:pookaboo/layers/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/data/repositories/map/map_repository_impl.dart';
import 'package:pookaboo/layers/data/repositories/review/review_repository_impl.dart';
import 'package:pookaboo/layers/data/repositories/visitation/visitation_repository_impl.dart';
import 'package:pookaboo/layers/domain/repositories/map/map_repository.dart';
import 'package:pookaboo/layers/domain/repositories/review/review_repository.dart';
import 'package:pookaboo/layers/domain/repositories/visitation/visitation_repository.dart';
import 'package:pookaboo/layers/domain/usecases/review/review_usecase.dart';
import 'package:pookaboo/layers/domain/usecases/map/map_usecase.dart';
import 'package:pookaboo/layers/domain/usecases/visitation/visitation_usecase.dart';
import 'package:pookaboo/layers/presentation/bloc/map/map_bloc.dart';
import 'package:pookaboo/layers/presentation/cubit/settings/setting_cubit.dart';
import 'package:pookaboo/layers/presentation/bloc/review/review_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/visitation/visitation_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/profile/profile_bloc.dart';
import 'package:pookaboo/shared/service/camera/camera_service.dart';
import 'package:pookaboo/shared/service/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/service/hive/main_box.dart';
import 'package:pookaboo/shared/service/kakao/kakao_map_service.dart';
import 'package:pookaboo/shared/service/kakao/kakao_service.dart';
import 'package:pookaboo/shared/service/storage/secure_storage.dart';
import 'package:pookaboo/shared/service/supabase/supabase_service.dart';

GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  await _initAppLocalStorages();

  await _service();
  await _dataSources();
  await _repositories();
  await _useCase();
  await _cubit();
  await _bloc();
}

Future<void> _initAppLocalStorages() async {
  sl.registerSingleton<SecureStorage>(SecureStorage());
}

Future<void> _repositories() async {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<MapRepository>(() => MapRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<ReviewRepository>(() => ReviewRepositoryImpl(sl()));
  sl.registerLazySingleton<VisitationRepository>(
      () => VisitationRepositoryImpl(sl()));
}

Future<void> _dataSources() async {
  sl.registerLazySingleton<ToiletRemoteDatasource>(
      () => ToiletRemoteDatasourceImpl(sl()));

  sl.registerLazySingleton<KakaoRemoteDatasource>(
      () => KakaoRemoteDatasourceImpl());
}

Future<void> _useCase() async {
  // auth
  sl.registerLazySingleton<AuthUseCase>(() => AuthUseCase(sl()));

  // map
  sl.registerLazySingleton<GetNearByToiletsUseCase>(
      () => GetNearByToiletsUseCase(sl()));
  sl.registerLazySingleton<GetToiletByIdUseCase>(
      () => GetToiletByIdUseCase(sl()));
  sl.registerLazySingleton<GetRoutesUseCase>(() => GetRoutesUseCase(sl()));

  // review
  sl.registerLazySingleton<CreateToiletReviewUseCase>(
      () => CreateToiletReviewUseCase(sl()));
  sl.registerLazySingleton<GetToiletReviewsByToiletIdUseCase>(
      () => GetToiletReviewsByToiletIdUseCase(sl()));
  sl.registerLazySingleton<GetToiletReviewsByUserIdUseCase>(
      () => GetToiletReviewsByUserIdUseCase(sl()));
  sl.registerLazySingleton<DeleteToiletReviewsByReviewIdUseCase>(
      () => DeleteToiletReviewsByReviewIdUseCase(sl()));

  // visitation
  sl.registerLazySingleton<CreateToiletVisitationUseCase>(
      () => CreateToiletVisitationUseCase(sl()));
  sl.registerLazySingleton<GetToiletVisitationsByUserIdUseCase>(
      () => GetToiletVisitationsByUserIdUseCase(sl()));
}

Future<void> _bloc() async {
  sl.registerFactory(() => AuthBloc(sl(), sl()));
  sl.registerFactory(() => MapBloc(sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => ReviewBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => VisitataionBloc(sl(), sl()));
  sl.registerFactory(() => ProfileBloc());
}

Future<void> _cubit() async {
  sl.registerFactory(() => AppCubit());
  sl.registerFactory(() => SettingsCubit(sl()));
}

Future<void> _service() async {
  // Supabase
  await SupabaseService.init(sl());
  sl.registerSingleton<SupabaseService>(SupabaseService());

  // Kakao
  await KakaoService.init();
  sl.registerSingleton<KakaoService>(KakaoService());

  // Kakao Map
  await KakaoMapService.init();
  sl.registerSingleton<KakaoMapService>(KakaoMapService());

  // Geolocator
  sl.registerSingleton<GeolocatorService>(GeolocatorService());

  // Camera
  sl.registerSingleton<CameraService>(CameraService());
}
