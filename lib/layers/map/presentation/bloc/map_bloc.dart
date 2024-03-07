import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/shared/services/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

part 'map_state.dart';
part 'map_event.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final MapRepository mapRepository;
  final GeolocatorService geolocatorService;

  MapBloc(this.mapRepository, this.geolocatorService) : super(InitialState()) {
    on<GetNearByToiletsEvent>(_onGetNearByToiletsEvent);
    on<MoveToMyPositionEvent>(_onMoveToMyPositionEvent);
    on<SelectedToiletMarkerEvent>(_onSelectedToiletMarkerEvent);
  }

  Future<void> _onGetNearByToiletsEvent(
    GetNearByToiletsEvent event,
    Emitter<MapState> emit,
  ) async {
    try {
      // emit(SearchingToiletState());

      // 현재 화면의 좌표
      // MapLatLng mapLoc = event.mapLoc;

      final resp = await mapRepository.getNearByToilets();

      Set<Marker> markers = resp.map<Marker>((toilet) {
        final t = Toilet.fromJson(toilet);
        return Marker(markerId: t.id.toString(), latLng: LatLng(t.lat, t.lng));
      }).toSet();

      // emit(LoadedToiletMarkerState(markers: markers));
    } catch (e) {
      // emit(ErrorState(message: ''));
    }
  }

  Future<void> _onMoveToMyPositionEvent(
      MoveToMyPositionEvent event, Emitter<MapState> emit) async {
    try {
      // final Position position = await geolocatorService.getPosition();

      final LatLng loc = LatLng(37.58414340112055, 127.04572825890429);
      event.mapController.panTo(loc);
    } catch (e) {
      log.e(e);
      // emit(ErrorState(message: ''));
    }
  }

  Future<void> _onSelectedToiletMarkerEvent(
      SelectedToiletMarkerEvent event, Emitter<MapState> emit) async {}
}
