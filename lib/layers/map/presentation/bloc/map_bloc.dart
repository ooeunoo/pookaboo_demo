import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'map_state.dart';
part 'map_event.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final MapRepository mapRepository;

  MapBloc(this.mapRepository) : super(InitialState());

  @override
  Stream<MapState> mapEventToState(MapEvent event) async* {
    if (event is GetNearByToiletsEvent) {
      yield* _onGetNearByToiletsEvent(event);
    } else if (event is SelectedToiletMarkerEvent) {
      yield* _onSelectedToiletMarkerEvent(event);
    }
  }

  Stream<MapState> _onGetNearByToiletsEvent(
      GetNearByToiletsEvent event) async* {
    try {
      yield SearchingToiletState();

      final resp = await mapRepository.getNearByToilets();

      Set<Marker> markers = resp.map<Marker>((toilet) {
        final t = Toilet.fromJson(toilet);
        return Marker(markerId: t.id.toString(), latLng: LatLng(t.lat, t.lng));
      }).toSet();

      yield LoadedToiletMarkerState(markers: markers);
    } catch (e) {
      yield ErrorState(message: '');
    }
  }

  Stream<MapState> _onSelectedToiletMarkerEvent(
      SelectedToiletMarkerEvent event) async* {
    try {} catch (e) {
      yield ErrorState(message: '');
    }
  }
}
