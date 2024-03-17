part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required String path,
    required int index,
    required bool visible,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        path: '',
        index: 0,
        visible: true,
      );
}
