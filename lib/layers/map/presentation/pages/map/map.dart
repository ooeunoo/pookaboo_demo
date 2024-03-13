import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/presentation/bloc/map_bloc.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/toilet_bottom_sheet.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_chip.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';

// 최초 중심
LatLng initialCenter = LatLng(37.584690, 127.046502);

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late KakaoMapController _controller;

  bool isOpenedBottomSheet = false;

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
      isOpenedBottomSheet = true;
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
      setState(() {
        isOpenedBottomSheet = false;
      });
    });
  }

  Future<void> _clear() async {
    await _controller.clearMarker();
    await _controller.clearMarkerClusterer();
    await _controller.clearPolyline();
  }

  Future<void> _drawCluster(Set<Marker> markers) async {
    Clusterer clusterer = Clusterer(
      averageCenter: true,
      disableClickZoom: false,
      markers: markers.toList(),
      gridSize: 30,
      minLevel: 3,
    );

    await _controller.addMarkerClusterer(clusterer: clusterer);
  }

  Future<void> _drawPolyline(Set<Polyline> polylines) async {
    await _controller.addPolyline(polylines: polylines.toList());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, MapState state) {
        return Stack(
          children: [
            ////////////////////////////////////
            ///  BLOCK LISTENER
            ///////////////////////////////////
            BlocListener<MapBloc, MapState>(
              listener: (context, state) async {
                if (state is MapCreatedState) {
                  // 초기화 상태라면 -> 내 위치로 이동하기
                  context.read<MapBloc>().add(MoveToMyPositionEvent());
                } else if (state is MovedMyPositionState ||
                    state is StoppedToiletNavigationState) {
                  // 지도가 이동한 상태라면 -> 주변 화장실 불러오기
                  context.read<MapBloc>().add(GetNearByToiletsEvent());
                } else if (state is LoadedToiletMarkersState) {
                  // 화장실 마커 데이터 불러오기를 완료했다면 -> 지도에 마커 그리기
                  await _clear();
                  await _drawCluster(state.markers);
                } else if (state is LoadedSelectedToiletState) {
                  // 화장실 마커를 선택했다면 -> 바텀 시트 열기
                  _showBottomSheet(context, state.toilet);
                } else if (state is LoadedToiletNavigationState) {
                  await _clear();
                  await _drawPolyline(state.polylines);
                  // 바텀시트 닫기
                  Navigator.pop(context);
                } else if (state is ZoomToClusterState) {
                  await _clear();
                  await _drawCluster(state.markers);
                }
              },

              ////////////////////////////////////
              ///  KAKAO MAP
              ///////////////////////////////////
              child: KakaoMap(
                currentLevel: 4,
                maxLevel: 5,
                center: initialCenter,
                onMapTap: (LatLng loc) {
                  // context.read<MapBloc>().add(GetNearByToiletsEvent());
                },
                onMapCreated: ((controller) async {
                  _controller = controller;
                  context
                      .read<MapBloc>()
                      .add(MapCreateEvent(controller: controller));
                }),
                onMarkerTap: (String markerId, _, __) {
                  context.read<MapBloc>().add(
                      SelecteToiletMarkerEvent(toiletId: int.parse(markerId)));
                },
                onMarkerClustererTap: (LatLng loc, int zoomLevel) {
                  context
                      .read<MapBloc>()
                      .add(ClickToClusterEvent(loc: loc, zoomLevel: zoomLevel));
                },
              ),
            ),

            ////////////////////////////////////
            ///  BACK BUTTON (STOP DIRECTION)
            ///////////////////////////////////
            if (state is LoadedToiletNavigationState) ...{
              Positioned(
                  left: Dimens.space20,
                  top: Dimens.statusbarHeight(context) + Dimens.space8,
                  child: GestureDetector(
                    onTap: () {
                      context.read<MapBloc>().add(StopNavigationEvent());
                    },
                    child: Container(
                      width: Dimens.space40,
                      height: Dimens.space40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 1, color: const Color(0xFFD3D7DF)),
                        // gap: const EdgeInsets.all(10),
                        color: Palette.white,
                      ),
                      child: SvgPicture.asset(
                        Images.arrowLeft,
                        width: 24, // SVG 이미지의 너비 조정 가능
                        height: 24, // SVG 이미지의 높이 조정 가능
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
                          isSelected: false, // [filter.index],
                          onTap: () {
                            context
                                .read<MapBloc>()
                                .add(ClickToiletFilterEvent(filter: filter));
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
                  child: GestureDetector(
                    onTap: () {
                      context.read<MapBloc>().add(MoveToMyPositionEvent());
                    },
                    child: Container(
                      width: Dimens.space40,
                      height: Dimens.space40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 1, color: const Color(0xFFD3D7DF)),
                        // gap: const EdgeInsets.all(10),
                        color: Palette.white,
                      ),
                      child: SvgPicture.asset(
                        Images.currentPosition,
                        width: 24, // SVG 이미지의 너비 조정 가능
                        height: 24, // SVG 이미지의 높이 조정 가능
                      ),
                    ),
                  )),
            }
          ],
        );
      },
    );
  }
}
