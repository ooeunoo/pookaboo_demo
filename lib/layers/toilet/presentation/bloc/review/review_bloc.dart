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

part 'review_state.dart';
part 'review_event.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  /////////////////////////////////
  /// UseCase
  ////////////////////////////////
  final CreateToiletReviewUseCase _createToiletReviewUseCase;

  /////////////////////////////////
  /// Event Mapping
  ////////////////////////////////
  ReviewBloc(this._createToiletReviewUseCase) : super(InitialState()) {
    on<CreateToiletReviewEvent>(_onCreateToiletReviewEvent);
    on<GetToiletReviewsEvent>(_onGetToiletReviewsEvent);
  }

  /////////////////////////////////
  /// Property
  ////////////////////////////////

  /////////////////////////////////
  /// [CreateToiletReviewEvent] Event Handler
  ////////////////////////////////
  Future<void> _onCreateToiletReviewEvent(
      CreateToiletReviewEvent event, Emitter<ReviewState> emit) async {}

  /////////////////////////////////
  /// [GetToiletReviewsEvent] Event Handler
  ////////////////////////////////
  Future<void> _onGetToiletReviewsEvent(
      GetToiletReviewsEvent event, Emitter<ReviewState> emit) async {}
}
