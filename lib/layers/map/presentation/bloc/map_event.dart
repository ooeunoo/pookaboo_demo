part of 'map_bloc.dart';

@immutable
abstract class MapEvent extends Equatable {}

/////////////////////////////////
/// Get Near By Toilets
/// 현재 근처 화장실 찾기
////////////////////////////////
class GetNearByToiletsEvent extends MapEvent {
  final LatLng loc;

  GetNearByToiletsEvent({required this.loc});

  @override
  List<Object?> get props => [loc];
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
