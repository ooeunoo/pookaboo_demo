import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/toilet/data/models/coord.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/layers/toilet/data/models/route.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_visitation_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/map_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/domain/usecases/review_usecase.dart';
import 'package:pookaboo/layers/toilet/domain/usecases/map_usecase.dart';
import 'package:pookaboo/layers/toilet/domain/usecases/visitation_usecase.dart';
import 'package:pookaboo/mocks/toilets.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/service/geolocator/geolocator_service.dart';
import 'package:pookaboo/shared/utils/helper/debounce_helper.dart';
import 'package:pookaboo/shared/utils/helper/coord_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

part 'visitation_state.dart';
part 'visitation_event.dart';

class VisitataionBloc extends Bloc<VisitationEvent, VisitationState> {
  /////////////////////////////////
  /// UseCase
  ////////////////////////////////
  final CreateToiletVisitationUseCase _createToiletVisitationUseCase;
  final GetToiletVisitationsByUserIdUseCase
      _getToiletVisitationsByUserIdUseCase;

  /////////////////////////////////
  /// Event Mapping
  ////////////////////////////////
  VisitataionBloc(
    this._createToiletVisitationUseCase,
    this._getToiletVisitationsByUserIdUseCase,
  ) : super(InitialState()) {
    on<CreateToiletVisitationEvent>(_onCreateToiletVisitationEvent);
    on<GetToiletVisitationsByUserIdEvent>(_onGetToiletVisitationsByUserIdEvent);
  }

  /////////////////////////////////
  /// Property
  ////////////////////////////////

  /////////////////////////////////
  /// [CreateToiletVisitationEvent] Event Handler
  ////////////////////////////////
  Future<void> _onCreateToiletVisitationEvent(
      CreateToiletVisitationEvent event, Emitter<VisitationState> emit) async {
    try {
      CreateVisitationParams params = CreateVisitationParams(
          toiletId: event.toiletId, userId: event.userId);
      final response = await _createToiletVisitationUseCase.call(params);
      response.fold((l) {
        log.e(l);
      }, (r) {
        // emit(LoadedToiletVisitationsByUserIdState(visitations: r));
      });
    } catch (e) {}
  }

  /////////////////////////////////
  /// [GetToiletVisitationsByUserIdEvent] Event Handler
  ////////////////////////////////
  Future<void> _onGetToiletVisitationsByUserIdEvent(
      GetToiletVisitationsByUserIdEvent event,
      Emitter<VisitationState> emit) async {
    try {
      final response =
          await _getToiletVisitationsByUserIdUseCase.call(event.userId);
      response.fold((l) {
        log.e(l);
      }, (r) {
        emit(LoadedToiletVisitationsByUserIdState(visitations: r));
      });
    } catch (e) {}
  }
}
