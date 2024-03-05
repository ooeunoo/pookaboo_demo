import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pookaboo/shared/router/app_routes.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(path: Routes.map.path, index: 0));

  void changeBottomNavigation(int index) {
    switch (index) {
      case 0:
        emit(NavigationState(path: Routes.map.path, index: 0));
        break;
      case 1:
        emit(NavigationState(path: Routes.profile.path, index: 1));
        break;
    }
  }
}
