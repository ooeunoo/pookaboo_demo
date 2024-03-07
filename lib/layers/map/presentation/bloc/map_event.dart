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
class GetNearByToiletsEvent extends MapEvent {
  GetNearByToiletsEvent();

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
/// Selected Toilet Marker
/// 특정 화장실 선택
////////////////////////////////
class SelectedToiletMarkerEvent extends MapEvent {
  final int toiletId;

  SelectedToiletMarkerEvent({required this.toiletId});

  @override
  List<Object> get props => [toiletId];
}
