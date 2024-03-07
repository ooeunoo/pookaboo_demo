part of 'map_bloc.dart';

@immutable
abstract class MapEvent extends Equatable {}

/////////////////////////////////
/// Get Near By Toilets
/// 현재 근처 화장실 찾기
////////////////////////////////
class GetNearByToiletsEvent extends MapEvent {
  final LatLngBounds bound;

  GetNearByToiletsEvent({required this.bound});

  @override
  List<Object?> get props => [bound];
}

/////////////////////////////////
/// Move to my position
/// 내 위치로 이동
////////////////////////////////
class MoveToMyPositionEvent extends MapEvent {
  final KakaoMapController mapController;
  MoveToMyPositionEvent({required this.mapController});

  @override
  List<Object> get props => [mapController];
}

/////////////////////////////////
/// Selected Toilet Marker
/// 특정 화장실 선택
////////////////////////////////
class SelectedToiletMarkerEvent extends MapEvent {
  final Marker marker;

  SelectedToiletMarkerEvent({required this.marker});

  @override
  List<Object> get props => [marker];
}
