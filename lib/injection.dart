import 'package:get_it/get_it.dart';
import 'package:pookaboo/layers/app/presentation/cubit/app_cubit.dart';
import 'package:pookaboo/layers/auth/data/repositories/auth_repository_impl.dart';
import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:pookaboo/layers/auth/domain/usecases/auth_usecase.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/map/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/map/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/map/data/repositories/map_repository_impl.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_routes_usecase.dart';
import 'package:pookaboo/layers/map/domain/usecases/create_review_usecase.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_nearby_toilets_usecase.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_toilet_by_id_usecase.dart';
import 'package:pookaboo/layers/map/presentation/bloc/map_bloc.dart';
import 'package:pookaboo/layers/setting/presentation/cubit/setting_cubit.dart';
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
}

Future<void> _dataSources() async {
  sl.registerLazySingleton<ToiletRemoteDatasource>(
      () => ToiletRemoteDatasourceImpl(sl()));

  sl.registerLazySingleton<KakaoRemoteDatasource>(
      () => KakaoRemoteDatasourceImpl());
}

Future<void> _useCase() async {
  sl.registerLazySingleton<AuthUseCase>(() => AuthUseCase(sl()));

  sl.registerLazySingleton<GetNearByToiletsUseCase>(
      () => GetNearByToiletsUseCase(sl()));

  sl.registerLazySingleton<GetToiletByIdUseCase>(
      () => GetToiletByIdUseCase(sl()));

  sl.registerLazySingleton<CreateReviewUseCase>(
      () => CreateReviewUseCase(sl()));

  sl.registerLazySingleton<GetRoutesUseCase>(() => GetRoutesUseCase(sl()));
}

Future<void> _bloc() async {
  sl.registerFactory(() => AuthBloc(sl(), sl()));
  sl.registerFactory(() => MapBloc(sl(), sl(), sl(), sl(), sl()));
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
}
