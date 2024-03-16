import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_visitation_params.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/layers/toilet/domain/usecases/visitation_usecase.dart';
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
    on<OpenToiletReviewFormEvent>(_onOpenToiletReviewFormEvent);
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

  Future<void> _onOpenToiletReviewFormEvent(
      OpenToiletReviewFormEvent event, Emitter<VisitationState> emit) async {}
}
