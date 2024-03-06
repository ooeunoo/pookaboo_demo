import 'package:get_it/get_it.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/layers/auth/data/repositories/auth_repository_impl.dart';
import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:pookaboo/layers/auth/domain/usecases/auth_usecase.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/map/data/datasources/toilet_remote_datasources.dart';
import 'package:pookaboo/layers/map/data/repositories/map_repository_impl.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/map/presentation/bloc/map_bloc.dart';
import 'package:pookaboo/layers/setting/presentation/cubit/setting_cubit.dart';
import 'package:pookaboo/shared/services/hive/main_box.dart';
import 'package:pookaboo/shared/services/kakao/kakao_map_service.dart';
import 'package:pookaboo/shared/services/supabase/supabase_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
  sl.registerLazySingleton<MapRepository>(() => MapRepositoryImpl(sl()));
}

void _dataSources() {
  sl.registerLazySingleton<ToiletRemoteDatasource>(
      () => ToiletRemoteDatasourceImpl(sl()));
}

void _useCase() {
  sl.registerLazySingleton(() => AuthUseCase(sl()));
}

void _bloc() {
  sl.registerFactory(() => AuthBloc(sl()));
  sl.registerFactory(() => MapBloc(sl()));
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
  await KakaoMapService.init();
  sl.registerSingleton<KakaoMapService>(KakaoMapService());
}
