import 'package:get_it/get_it.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
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
import 'package:pookaboo/shared/services/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/services/hive/main_box.dart';
import 'package:pookaboo/shared/services/kakao/kakao_map_service.dart';
import 'package:pookaboo/shared/services/kakao/kakao_navi_service.dart';
import 'package:pookaboo/shared/services/storage/storage_service.dart';
import 'package:pookaboo/shared/services/supabase/supabase_service.dart';

GetIt sl = GetIt.instance;

Future<void> configureDependencies({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }

  _service();
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  _bloc();
  if (isHiveEnable) {
    await _initHiveBoxes(
      isUnitTest: isUnitTest,
      prefixBox: prefixBox,
    );
  }
}

Future<void> _initHiveBoxes({
  bool isUnitTest = false,
  String prefixBox = '',
}) async {
  await MainBoxMixin.initHive(prefixBox);
  sl.registerSingleton<MainBoxMixin>(MainBoxMixin());
}

void _repositories() {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<MapRepository>(() => MapRepositoryImpl(sl(), sl()));
}

void _dataSources() {
  sl.registerLazySingleton<ToiletRemoteDatasource>(
      () => ToiletRemoteDatasourceImpl(sl()));

  sl.registerLazySingleton<KakaoRemoteDatasource>(
      () => KakaoRemoteDatasourceImpl());
}

void _useCase() {
  sl.registerLazySingleton<AuthUseCase>(() => AuthUseCase(sl()));

  sl.registerLazySingleton<GetNearByToiletsUseCase>(
      () => GetNearByToiletsUseCase(sl()));

  sl.registerLazySingleton<GetToiletByIdUseCase>(
      () => GetToiletByIdUseCase(sl()));

  sl.registerLazySingleton<CreateReviewUseCase>(
      () => CreateReviewUseCase(sl()));

  sl.registerLazySingleton<GetRoutesUseCase>(() => GetRoutesUseCase(sl()));
}

void _bloc() {
  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(() => MapBloc(sl(), sl(), sl(), sl(), sl(), sl()));
}

void _cubit() {
  sl.registerFactory(() => NavigationCubit());
  sl.registerFactory(() => SettingsCubit());
}

void _service() async {
  // Supabase
  await SupabaseService.init();
  sl.registerSingleton<SupabaseService>(SupabaseService());

  // Kakao Map
  await KakaoNaviService.init();
  sl.registerSingleton<KakaoNaviService>(KakaoNaviService());

  // Kakao Map
  await KakaoMapService.init();
  sl.registerSingleton<KakaoMapService>(KakaoMapService());

  // Geolocator
  sl.registerSingleton<GeolocatorService>(GeolocatorService());

  // Local Storage
  await StorageService.init();
  sl.registerSingleton<StorageService>(StorageService());
}
