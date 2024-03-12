import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/shared/router/app_routes.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(NavigationState(path: AppRoutes.map.path, index: 0));

  void changeBottomNavigation(int index) {
    switch (index) {
      case 0:
        emit(NavigationState(path: AppRoutes.map.path, index: 0));
        break;
      case 1:
        emit(NavigationState(path: AppRoutes.profile.path, index: 1));
        break;
    }
  }
}
