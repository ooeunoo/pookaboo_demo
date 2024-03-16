import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/toilet/data/models/coord.dart';
import 'package:pookaboo/layers/toilet/data/models/route.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/map_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/domain/usecases/review_usecase.dart';
import 'package:pookaboo/layers/toilet/domain/usecases/map_usecase.dart';
import 'package:pookaboo/mocks/toilets.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/service/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/utils/helper/debounce_helper.dart';
import 'package:pookaboo/shared/utils/helper/coord_helper.dart';
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
  final GetToiletByIdUseCase _getToiletByIdUseCase;
  final CreateToiletReviewUseCase _createToiletReviewUseCase;
  final GetRoutesUseCase _getRoutesUseCase;

  /////////////////////////////////
  /// Event Mapping
  ////////////////////////////////
  MapBloc(
      this._geolocatorService,
      this._getNearByToiletsUseCase,
      this._getToiletByIdUseCase,
      this._createToiletReviewUseCase,
      this._getRoutesUseCase)
      : super(InitialState()) {
    on<MapCreateEvent>(_onMapCreateEvent);
    on<GetNearByToiletsEvent>(_onGetNearByToiletsEvent);
    on<ClickToClusterEvent>(_onClickToClusterEvent);
    on<MoveToMyPositionEvent>(_onMoveToMyPositionEvent);
    on<SelecteToiletMarkerEvent>(_onSelecteToiletMarkerEvent);
    on<StartNavigationEvent>(_onStartNavigationEvent);
    on<StopNavigationEvent>(_onStopNavigationEvent);
    on<UpdateToiletFilterEvent>(_onUpdateToiletFilterEvent);
  }

  /////////////////////////////////
  /// Property
  ////////////////////////////////

  late KakaoMapController _mapController;
  late final List<ToiletFilter> _filters = [];
  late Set<Marker> _markers = {};
  late Set<Polyline> _polylines = {};

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
      LatLngBounds bounds = await _mapController.getBounds();
      GetNearByToiletsParams params = GetNearByToiletsParams(
          bounds: bounds,
          passwordFilter: _hasFillter(ToiletFilter.password),
          timeFilter: _hasFillter(ToiletFilter.time),
          genderFilter: _hasFillter(ToiletFilter.gender));

      final response = await _getNearByToiletsUseCase.call(params);

      await response.fold((l) {
        log.e(l);
      }, (r) async {
        _markers = r.map<Marker>((toilet) {
          return Marker(
            markerId: toilet.id.toString(),
            latLng: LatLng(
              toilet.lat,
              toilet.lng,
            ),
          );
        }).toSet();

        emit(LoadedToiletMarkersState(markers: _markers));
      });
    } catch (e) {
      log.e(e);
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
      emit(MovedMyPositionState(loc: myPosition));
    } catch (e) {
      // 사용자 위치 접근 허용을 요청하는 알람
      log.e(e);
      // emit(ErrorState(message: ''));
    }
  }

  /////////////////////////////////
  /// [ClickToClusterEvent] Event Handler
  ////////////////////////////////
  Future<void> _onClickToClusterEvent(
      ClickToClusterEvent event, Emitter<MapState> emit) async {
    try {
      int zoomLevel = event.zoomLevel;
      LatLng loc = event.loc;
      LatLng position = LatLng(loc.latitude, loc.longitude);
      await _mapController.panTo(position);
      if (zoomLevel > 1) {
        await _mapController.setLevel(zoomLevel - 1);
      }
      emit(ZoomToClusterState(markers: _markers));
    } catch (e) {
      // 사용자 위치 접근 허용을 요청하는 알람
      log.e(e);
      // emit(ErrorState(message: ''));
    }
  }

  /////////////////////////////////
  /// [SelecteToiletMarkerEvent] Event Handler
  ////////////////////////////////
  Future<void> _onSelecteToiletMarkerEvent(
      SelecteToiletMarkerEvent event, Emitter<MapState> emit) async {
    try {
      final int toiletId = event.toiletId;
      final response = await _getToiletByIdUseCase.call(toiletId);

      response.fold((l) {
        // error
        //  if (l is ServerFailure) {
        //   emit(_Failure(l.message ?? ""));
        // }
        log.e(l);
      }, (r) {
        emit(LoadedSelectedToiletState(toilet: r));
      });
    } catch (e) {
      log.e(e);
    }
  }

  /////////////////////////////////
  /// [StartDirectionEvent] Event Handler
  ////////////////////////////////
  Future<void> _onStartNavigationEvent(
      StartNavigationEvent event, Emitter<MapState> emit) async {
    emit(SearchingToiletNavigationState());
    // 마커 제거

    Toilet toilet = event.toilet;
    try {
      final Position position = await _geolocatorService.getPosition();

      Document mp = coordconvWGS84ToWCONGNAMUL(
        position.longitude,
        position.latitude,
      );

      Document tp = coordconvWGS84ToWCONGNAMUL(toilet.lng, toilet.lat);

      GetRouteParams params = GetRouteParams(
          sName: '나의 위치',
          sX: mp.x,
          sY: mp.y,
          eName: toilet.name,
          eX: tp.x,
          eY: tp.y,
          ids: '11277825,434235');

      final response = await _getRoutesUseCase.call(params);

      await response.fold((l) {
        log.e(l);
      }, (r) async {
        _polylines = {
          Polyline(
              polylineId: 'polyline',
              points: r.points.map((route) {
                return LatLng(route.y, route.x);
              }).toList(),
              strokeColor: const Color(0xff0078FF),
              strokeWidth: 10,
              strokeStyle: StrokeStyle.solid)
        };

        emit(LoadedToiletNavigationState(
            toilet: toilet, polylines: _polylines, time: r.time));
      });
    } catch (e) {
      log.e(e);
    }
  }

  /////////////////////////////////
  /// [EndDirectionEvent] Event Handler
  ////////////////////////////////
  Future<void> _onStopNavigationEvent(
      StopNavigationEvent event, Emitter<MapState> emit) async {
    emit(StoppedToiletNavigationState());
    // final Position position = await _geolocatorService.getPosition();
    // LatLng myPosition = LatLng(position.latitude, position.longitude);
    // _mapController.panTo(myPosition);
    // emit(MovedMyPositionState(loc: myPosition));
  }

  Future<void> _onUpdateToiletFilterEvent(
      UpdateToiletFilterEvent event, Emitter<MapState> emit) async {
    ToiletFilter selectFilter = event.filter;
    if (_filters.contains(selectFilter)) {
      _filters.remove(selectFilter);
    } else {
      _filters.add(selectFilter);
    }
    emit(UpdatedFilterState(filters: _filters));
  }

  bool _hasFillter(ToiletFilter filter) {
    return _filters.contains(filter);
  }
}
