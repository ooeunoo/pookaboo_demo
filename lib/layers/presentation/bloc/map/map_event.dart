part of 'map_bloc.dart';

@immutable
abstract class MapEvent extends Equatable {}

/////////////////////////////////
/// Map Create
/// 지도 생성
////////////////////////////////
class MapCreateEvent extends MapEvent {
  final KakaoMapController controller;

  MapCreateEvent({required this.controller});

  @override
  List<Object?> get props => [controller];
}

/////////////////////////////////
/// Get Near By Toilets
/// 현재 근처 화장실 찾기
////////////////////////////////
class GetNearByToiletMarkersEvent extends MapEvent {
  GetNearByToiletMarkersEvent();

  @override
  List<Object?> get props => [];
}

/////////////////////////////////
/// Move to my position
/// 내 위치로 이동
////////////////////////////////
class MoveToMyPositionEvent extends MapEvent {
  MoveToMyPositionEvent();

  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// 화장실 조회 필터 선택
////////////////////////////////
class UpdateToiletFilterEvent extends MapEvent {
  final ToiletFilter filter;

  UpdateToiletFilterEvent({required this.filter});

  @override
  List<Object> get props => [filter];
}

/////////////////////////////////
/// Move to Cluster
/// 클러스터 위치로 이동
////////////////////////////////
class ClickToClusterEvent extends MapEvent {
  final LatLng loc;
  final int zoomLevel;

  ClickToClusterEvent({required this.loc, required this.zoomLevel});

  @override
  List<Object> get props => [loc, zoomLevel];
}

/////////////////////////////////
/// Selected Toilet Marker
/// 특정 화장실 선택
////////////////////////////////
class SelecteToiletMarkerEvent extends MapEvent {
  final int toiletId;

  SelecteToiletMarkerEvent({required this.toiletId});

  @override
  List<Object> get props => [toiletId];
}

/////////////////////////////////
/// Start Navigation
/// 화장실 길찾기 시작
////////////////////////////////
class StartNavigationEvent extends MapEvent {
  final Toilet toilet;

  StartNavigationEvent({
    required this.toilet,
  });

  @override
  List<Object> get props => [toilet];
}

class LoadNavigationEvent extends MapEvent {
  final Toilet toilet;
  final CustomMarker startMarker;
  final CustomMarker endMarker;
  final Set<Polyline> polylines;
  final int time;

  LoadNavigationEvent(
      {required this.toilet,
      required this.startMarker,
      required this.endMarker,
      required this.polylines,
      required this.time});

  @override
  List<Object> get props => [toilet, startMarker, endMarker, polylines, time];
}

/////////////////////////////////
/// Stop Navigation
/// 화장실 길찾기 종료
////////////////////////////////
class StopNavigationEvent extends MapEvent {
  @override
  List<Object> get props => [];
}
