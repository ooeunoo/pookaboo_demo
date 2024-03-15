import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(AppState(
          path: AppRoutes.map.path,
          index: 0,
          visible: true,
        ));

  void changeBottomNavigation(int index) {
    switch (index) {
      case 0:
        emit(AppState(path: AppRoutes.map.path, index: 0, visible: true));
        break;
      case 1:
        emit(AppState(path: AppRoutes.profile.path, index: 1, visible: true));
        break;
    }
  }

  void updateBottomNavigationVisible(bool visible) {
    emit(state.copyWith(visible: visible));
  }
}
