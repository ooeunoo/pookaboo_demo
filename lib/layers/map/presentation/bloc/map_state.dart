part of 'map_bloc.dart';

@immutable
abstract class MapState extends Equatable {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends MapState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Map Created
////////////////////////////////
class MapCreatedState extends MapState {
  final KakaoMapController controller;

  MapCreatedState({required this.controller});

  @override
  List<Object> get props => [controller];
}

/////////////////////////////////
/// Moved Map
////////////////////////////////
class MovedMyPositionState extends MapState {
  final LatLng loc;

  MovedMyPositionState({required this.loc});

  @override
  List<Object> get props => [loc];
}

/////////////////////////////////
/// Searching Toilet
////////////////////////////////
class SearchingToiletState extends MapState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Loaded Toilet Markers
////////////////////////////////
class LoadedToiletMarkersState extends MapState {
  final Set<Marker> markers;
  @override
  LoadedToiletMarkersState({required this.markers});

  @override
  List<Object> get props => [markers];
}

/////////////////////////////////
/// Loaded Selected Toilet
////////////////////////////////
class LoadedSelectedToiletState extends MapState {
  final Toilet toilet;

  LoadedSelectedToiletState({required this.toilet});

  @override
  List<Object> get props => [toilet];
}

/////////////////////////////////
/// Searching Toilet Direction
////////////////////////////////
class SearchingToiletNavigationState extends MapState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Loaded Toilet Direction
////////////////////////////////
class LoadedToiletNavigationState extends MapState {
  final Toilet toilet;
  final Set<Polyline> polylines;
  final int time;

  LoadedToiletNavigationState(
      {required this.toilet, required this.polylines, required this.time});

  @override
  List<Object> get props => [toilet, polylines, time];
}

/////////////////////////////////
/// Zoom To Cluster
////////////////////////////////
class ZoomToClusterState extends MapState {
  final Set<Marker> markers;

  ZoomToClusterState({required this.markers});
  @override
  List<Object> get props => [markers];
}

/////////////////////////////////
/// Zoom To Cluster
////////////////////////////////
class UpdatedFilterState extends MapState {
  final List<ToiletFilter> filters;

  UpdatedFilterState({required this.filters});

  @override
  List<Object> get props => [filters];
}

/////////////////////////////////
/// Stopped Toilet AppState
////////////////////////////////
class StoppedToiletNavigationState extends MapState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends MapState {
  final String message;

  ErrorState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
