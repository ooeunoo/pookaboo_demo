import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/presentation/bloc/map_bloc.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/button.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/header.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/location.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/property.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/bottom_sheet/rating.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/widgets/toilet_bottom_sheet.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_chip.dart';
import 'package:pookaboo/shared/widgets/app_drag_handle_bar.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';

// 최초 중심
LatLng initialCenter = LatLng(37.584690, 127.046502);

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool isOpenedBottomSheet = false;

  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  double currentSnapSize = 0.25; // 스냅 인덱스를 저장할 변수

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('here');
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
          double bottomSheetOffset) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(Dimens.space12),
                child: const AppDragHandleBar(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimens.space36),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    ToiletBottomSheet(
                        offset: bottomSheetOffset, toilet: toilet),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(Dimens.space20),
                child: ToiletBottomSheetButton(toilet: toilet),
              ),
            )
          ],
        );
      },
    ).whenComplete(() {
      print('complete');
      setState(() {
        isOpenedBottomSheet = false;
      }); // This worked me;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, MapState state) {
        return Stack(
          children: [
            ////////////////////////////////////
            ///  KAKAO MAP
            ///////////////////////////////////
            BlocListener<MapBloc, MapState>(
              listener: (context, state) {
                // 초기화 상태라면 내 위치로 이동하기
                if (state is MapCreatedState) {
                  context.read<MapBloc>().add(MoveToMyPositionEvent());
                } else if (state is MovedMapState) {
                  context.read<MapBloc>().add(GetNearByToiletsEvent());
                } else if (state is LoadedToiletMarkersState) {
                  markers = state.markers;
                } else if (state is LoadedSelectedToiletState) {
                  _showBottomSheet(context, state.toilet);
                } else if (state is LoadedToiletDirectionState) {
                  polylines.add(
                    Polyline(
                        polylineId: 'polyline_1',
                        points: state.routes.points.map((route) {
                          return LatLng(route.y, route.x);
                        }).toList(),
                        strokeColor: const Color(0xff0078FF),
                        strokeWidth: 10,
                        strokeStyle: StrokeStyle.solid),
                  );

                  setState(() {});
                }
              },
              child: KakaoMap(
                  center: initialCenter,
                  onMapTap: (LatLng loc) {
                    context.read<MapBloc>().add(GetNearByToiletsEvent());
                  },
                  onMapCreated: ((controller) async {
                    context
                        .read<MapBloc>()
                        .add(MapCreateEvent(controller: controller));
                  }),
                  onMarkerTap: (markerId, _, __) {
                    context.read<MapBloc>().add(SelecteToiletMarkerEvent(
                        toiletId: int.parse(markerId)));
                  },
                  polylines: polylines.toList(),
                  markers: markers.toList()),
            ),
            ////////////////////////////////////
            ///  FILTER CHIP
            ///////////////////////////////////
            Positioned(
              left: Dimens.space20,
              top: Dimens.statusbarHeight(context) + Dimens.space8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppChip(
                    text: Messages.of(context)!.toiletFilterTime,
                    icon: SvgPicture.asset(
                      Images.alarm,
                    ),
                    isSelected: false,
                    onChanged: (isSelected) {
                      // 필터 선택 이벤트 발생
                    },
                  ),
                  AppSpacerH(value: Dimens.space8),
                  AppChip(
                    text: Messages.of(context)!.toiletFilterGender,
                    icon: SvgPicture.asset(Images.gender),
                    isSelected: false,
                    onChanged: (isSelected) {},
                  ),
                  AppSpacerH(value: Dimens.space8),
                  AppChip(
                    text: Messages.of(context)!.toiletFilterPassword,
                    icon: SvgPicture.asset(Images.closeKey),
                    isSelected: false,
                    onChanged: (isSelected) {
                      // 필터 선택 이벤트 발생
                    },
                  ),
                ],
              ),
            ),
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
                      border:
                          Border.all(width: 1, color: const Color(0xFFD3D7DF)),
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
          ],
        );
      },
    );
  }
}
