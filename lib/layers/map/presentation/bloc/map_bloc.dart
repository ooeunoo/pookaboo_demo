import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_nearby_toilets_usecase.dart';
import 'package:pookaboo/mocks/toilets.dart';
import 'package:pookaboo/shared/services/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

part 'map_state.dart';
part 'map_event.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  /////////////////////////////////
  /// Service
  ////////////////////////////////
  final GeolocatorService _geolocatorService;

  /////////////////////////////////
  /// UseCase
  ////////////////////////////////
  final GetNearByToiletsUseCase _getNearByToiletsUseCase;

  /////////////////////////////////
  /// Event Mapping
  ////////////////////////////////
  MapBloc(this._geolocatorService, this._getNearByToiletsUseCase)
      : super(InitialState()) {
    on<MapCreateEvent>(_onMapCreateEvent);
    on<GetNearByToiletsEvent>(_onGetNearByToiletsEvent);
    on<MoveToMyPositionEvent>(_onMoveToMyPositionEvent);
    on<SelectedToiletMarkerEvent>(_onSelectedToiletMarkerEvent);
  }

  /////////////////////////////////
  /// Property
  ////////////////////////////////
  late KakaoMapController _mapController;

  /////////////////////////////////
  /// [MapCreateEvent] Event Handler
  ////////////////////////////////
  Future<void> _onMapCreateEvent(
      MapCreateEvent event, Emitter<MapState> emit) async {
    _mapController = event.controller;
    emit(MapCreatedState(controller: _mapController));
  }

  /////////////////////////////////
  /// [GetNearByToiletsEvent] Event Handler
  ////////////////////////////////
  Future<void> _onGetNearByToiletsEvent(
    GetNearByToiletsEvent event,
    Emitter<MapState> emit,
  ) async {
    try {
      emit(SearchingToiletState());
      log.d('in');
      // 현재 화면의 왼쪽 하단과 오른쪽 상단 좌표
      LatLngBounds bounds = await _mapController.getBounds();

      GetNearByToiletsParams params = GetNearByToiletsParams(
          bounds: bounds, filterOfPassword: false, filterOfVisible: true);

      final response = await _getNearByToiletsUseCase.call(params);
      log.d('response');

      response.fold((l) {
        // error
        //  if (l is ServerFailure) {
        //   emit(_Failure(l.message ?? ""));
        // }
        log.e(l);
      }, (r) {
        log.d('herer');
        Set<Marker> markers = r.map<Marker>((toilet) {
          return Marker(
              markerId: toilet.id.toString(),
              latLng: LatLng(toilet.lat, toilet.lng));
        }).toSet();
        emit(LoadedToiletMarkerState(markers: markers));
      });
    } catch (e) {
      log.e(e);
      // emit(ErrorState(message: ''));
    }
  }

  /////////////////////////////////
  /// [MoveToMyPositionEvent] Event Handler
  ////////////////////////////////
  Future<void> _onMoveToMyPositionEvent(
      MoveToMyPositionEvent event, Emitter<MapState> emit) async {
    try {
      final Position position = await _geolocatorService.getPosition();
      LatLng myPosition = LatLng(position.latitude, position.longitude);
      _mapController.panTo(myPosition);
      emit(MovedMapState());
    } catch (e) {
      // 사용자 위치 접근 허용을 요청하는 알람
      log.e(e);
      // emit(ErrorState(message: ''));
    }
  }

  /////////////////////////////////
  /// [SelectedToiletMarkerEvent] Event Handler
  ////////////////////////////////
  Future<void> _onSelectedToiletMarkerEvent(
      SelectedToiletMarkerEvent event, Emitter<MapState> emit) async {}
}
