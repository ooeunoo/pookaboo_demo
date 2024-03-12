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
class MovedMapState extends MapState {
  @override
  List<Object> get props => [];
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
class SearchingToiletDirectionState extends MapState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Loaded Toilet Direction
////////////////////////////////
class LoadedToiletDirectionState extends MapState {
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
