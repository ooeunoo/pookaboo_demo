import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(NavigationState(bottomNavItems: Routes.map.path, index: 0));

  void getNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(NavigationState(bottomNavItems: Routes.map.path, index: 0));
        break;
      case 1:
        emit(NavigationState(bottomNavItems: Routes.profile.path, index: 1));
        break;
    }
  }
}
