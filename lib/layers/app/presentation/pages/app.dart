import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/app/presentation/cubit/app_cubit.dart';
import 'package:pookaboo/layers/app/presentation/widgets/navigation_bar_item_widget.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/services/storage/secure_storage.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class AppPage extends StatefulWidget {
  final Widget screen;

  const AppPage({super.key, required this.screen});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final SecureStorage _secureStorage = sl<SecureStorage>();
  late bool needToUpdateMetadata = false;

  @override
  void initState() {
    super.initState();

    _loadState();
  }

  void _loadState() async {
    needToUpdateMetadata = await _secureStorage.needToUpdatedInitialUserData();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              widget.screen,
            ],
          ),
          bottomNavigationBar: _buildBottomNavigation(context, state),
        );
      },
    );
  }

  Widget _buildBottomNavigation(BuildContext context, AppState state) {
    final tabs = [
      NavigationBarItemWidget(
        initialLocation: AppRoutes.map.path,
        icon: const Icon(Icons.search),
        label: 'Home',
      ),
      NavigationBarItemWidget(
        initialLocation: AppRoutes.profile.path,
        icon: const Icon(Icons.person),
        label: 'Profile',
      ),
    ];

    return Visibility(
        visible: state.visible,
        child: Container(
          // height: Dimens.,
          decoration: const BoxDecoration(
              color: Palette.coolGrey08,
              border: Border(
                  top: BorderSide(color: Palette.coolGrey08, width: 1.0))),
          child: BottomNavigationBar(
            onTap: (value) async {
              if (value != state.index) {
                context.read<AppCubit>().changeBottomNavigation(value);
                context.go(tabs[value].initialLocation);
                // 흠.. 바텀시트가 열려있을때 닫고 다른 페이지로 이동하기 위한 코드. 동작 이해 아직 안됨.
                if (context.canPop()) {
                  context.pop();
                }
              }
            },
            elevation: 0,
            items: tabs
                .map((item) => BottomNavigationBarItem(
                      icon: item.icon,
                      label: item.label,
                    ))
                .toList(),
            currentIndex: state.index,
          ),
        ));
  }

  Widget _buildBottomSheet(BuildContext context) {
    void showBottomSheet() {
      showFlexibleBottomSheet(
        context: context,
        anchors: [0.3, 1],
        initHeight: 0.3,
        isDismissible: true,
        isExpand: true,
        isSafeArea: true,
        isModal: true,
        bottomSheetBorderRadius: const BorderRadiusDirectional.only(
            topEnd: Radius.circular(20), topStart: Radius.circular(20)),
        draggableScrollableController: DraggableScrollableController(),
        builder: (BuildContext context, ScrollController scrollController,
            double offset) {
          return Container();
        },
      );
    }

    return Container();
  }
}
