part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState(
      {required String path,
      required int index,
      required bool visible}) = _NavigationState;

  factory NavigationState.initial() =>
      const NavigationState(path: '', index: 0, visible: true);
}
