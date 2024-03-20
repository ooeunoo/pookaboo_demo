import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/presentation/cubit/app/app_cubit.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/presentation/bloc/map/map_bloc.dart';
import 'package:pookaboo/layers/presentation/bloc/visitation/visitation_bloc.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/toilet_bottom_sheet.dart';
import 'package:pookaboo/layers/presentation/pages/map/widgets/navigation_modal.dart';
import 'package:pookaboo/shared/constant/config.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/service/storage/secure_storage.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/debounce_helper.dart';
import 'package:pookaboo/shared/utils/helper/vibration_helper.dart';
import 'package:pookaboo/shared/widgets/common/app_chip.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Debouncer _debouncer = Debouncer(milliseconds: 200);
  bool isOpenDetailSheet = false;

  late KakaoMapController _controller;
  List<ToiletFilter> _filtered = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showBottomSheet(BuildContext context, Toilet toilet) async {
    setState(() {
      isOpenDetailSheet = true;
    });
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
        return ToiletBottomSheet(
          offset: offset,
          toilet: toilet,
          controller: scrollController,
        );
      },
    ).whenComplete(() {
      if (mounted) {
        setState(() {
          isOpenDetailSheet = false;
        });
      }
    });
  }

  Future<void> _clear() async {
    await _controller.clearCustomOverlay();
    await _controller.clearMarkerClusterer();
    await _controller.clearPolyline();
  }

  Future<void> _drawMarker(Set<CustomOverlay> markers) async {
    await _controller.addCustomOverlay(customOverlays: markers.toList());

    // Clusterer clusterer = Clusterer(
    //   averageCenter: true,
    //   disableClickZoom: false,
    //   gridSize: 30,
    //   minLevel: 3,
    //   markers: markers.toList(),
    // );

    // await _controller.addMarkerClusterer(clusterer: clusterer);
  }

  Future<void> _drawPolyline(Set<Polyline> polylines) async {
    await _controller.addPolyline(polylines: polylines.toList());
  }

  void _updateVisibleOfBottomNavigation(bool state) {
    context.read<AppCubit>().updateBottomNavigationVisible(state);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapBloc, MapState>(
      listener: (context, state) async {
        if (state is MapCreatedState) {
          context.read<MapBloc>().add(MoveToMyPositionEvent());
        } else if (state is MovedMyPositionState ||
            state is StoppedToiletNavigationState) {
          _updateVisibleOfBottomNavigation(true);
          context.read<MapBloc>().add(GetNearByToiletsEvent());
        } else if (state is LoadedToiletMarkersState) {
          await _clear();
          await _drawMarker(state.markers);
        } else if (state is LoadedSelectedToiletState) {
          _showBottomSheet(context, state.toilet);
        } else if (state is LoadedToiletNavigationState) {
          await _clear();

          // 마커 및 경로 그리기
          Set<CustomOverlay> markers = {};
          markers.addAll({state.startMarker, state.endMarker});
          await _drawPolyline(state.polylines);
          await _drawMarker(markers);

          context.back();
          _updateVisibleOfBottomNavigation(false);
        } else if (state is ZoomToClusterState) {
          await _clear();
          await _drawMarker(state.markers);
        } else if (state is UpdatedFilterState) {
          _filtered = state.filters;
          _debouncer
              .run(() => context.read<MapBloc>().add(GetNearByToiletsEvent()));
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            KakaoMap(
              currentLevel: 4,
              maxLevel: 5,
              center: Config.get.initialCenter,
              onMapTap: (LatLng loc) {
                // context.read<MapBloc>().add(GetNearByToiletsEvent());
              },
              onMapCreated: ((controller) async {
                _controller = controller;
                context
                    .read<MapBloc>()
                    .add(MapCreateEvent(controller: controller));
              }),
              onCustomOverlayTap: (String customOverlayId, LatLng latLng) {
                if (!isOpenDetailSheet) {
                  context.read<MapBloc>().add(SelecteToiletMarkerEvent(
                      toiletId: int.parse(customOverlayId)));
                }
              },
              // onMarkerTap: (String markerId, _, __) {
              //   context.read<MapBloc>().add(
              //       SelecteToiletMarkerEvent(toiletId: int.parse(markerId)));
              // },
              // onMarkerClustererTap: (LatLng loc, int zoomLevel) {
              //   context
              //       .read<MapBloc>()
              //       .add(ClickToClusterEvent(loc: loc, zoomLevel: zoomLevel));
              // },
            ),

            ////////////////////////////////////
            ///  BACK BUTTON (STOP DIRECTION)
            ///////////////////////////////////
            if (state is LoadedToiletNavigationState) ...{
              Positioned(
                  left: Dimens.space20,
                  top: Dimens.statusbarHeight(context) + Dimens.space8,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      context.read<MapBloc>().add(StopNavigationEvent());
                    },
                    child: Container(
                      width: Dimens.space40,
                      height: Dimens.space40,
                      padding: EdgeInsets.all(Dimens.space8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.space12),
                        border: Border.all(
                            width: Dimens.space1,
                            color: const Color(0xFFD3D7DF)),
                        // gap: const EdgeInsets.all(10),
                        color: Palette.white,
                      ),
                      child: SvgPicture.asset(
                        Assets.arrowLeft,
                        width: Dimens.space24,
                        height: Dimens.space24,
                      ),
                    ),
                  )),
            },

            ////////////////////////////////////
            ///  FILTER CHIP
            ///////////////////////////////////
            if (state is! LoadedToiletNavigationState) ...{
              Positioned(
                left: Dimens.space20,
                top: Dimens.statusbarHeight(context) + Dimens.space8,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ToiletFilter.values.map((filter) {
                      return Padding(
                        padding: EdgeInsets.only(right: Dimens.space4),
                        child: AppChip(
                          text: filter.text,
                          icon: filter.icon,
                          isSelected: _filtered.contains(filter),
                          onTap: () {
                            onMediumVibration();
                            context
                                .read<MapBloc>()
                                .add(UpdateToiletFilterEvent(filter: filter));
                          },
                        ),
                      );
                    }).toList()),
              ),
            },

            ////////////////////////////////////
            ///  MY POISITION BUTTON
            ///////////////////////////////////
            if (state is! LoadedToiletNavigationState) ...{
              Positioned(
                  right: Dimens.space20,
                  bottom: Dimens.bottomBarHeight(context) + Dimens.space24,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      onMediumVibration();
                      context.read<MapBloc>().add(MoveToMyPositionEvent());
                    },
                    child: Container(
                      width: Dimens.space40,
                      height: Dimens.space40,
                      padding: EdgeInsets.all(Dimens.space8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.space12),
                        border: Border.all(
                            width: Dimens.space1,
                            color: const Color(0xFFD3D7DF)),
                        // gap: const EdgeInsets.all(10),
                        color: Palette.white,
                      ),
                      child: SvgPicture.asset(
                        Assets.currentPosition,
                        width: Dimens.space24,
                        height: Dimens.space24,
                      ),
                    ),
                  )),
            },

            ////////////////////////////////////
            ///  Navigation
            ///////////////////////////////////
            if (state is LoadedToiletNavigationState) ...{
              Positioned(
                  bottom: Dimens.bottomBarHeight(context) + Dimens.space60,
                  left: Dimens.zero,
                  right: Dimens.zero,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.space20),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Palette.coolGrey12,
                          borderRadius: BorderRadius.circular(Dimens.space16),
                          border: Border.all(
                            color: Palette.coolGrey13,
                            width: Dimens.space1,
                          ),
                        ),
                        height: Dimens.space155,
                        child: NavigationModal(
                            toilet: state.toilet, time: state.time)),
                  )),
            }
          ],
        );
      },
    );
  }
}
