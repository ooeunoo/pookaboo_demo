import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/layers/domain/usecases/proposal/proposal_usecase.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

part 'proposal_state.dart';
part 'proposal_event.dart';

class ProposalBloc extends Bloc<ProposalEvent, ProposalState> {
  /////////////////////////////////
  /// UseCase
  ////////////////////////////////
  final CreateToiletProposalUseCase _createToiletProposalUseCase;

  /////////////////////////////////
  /// Event Mapping
  ////////////////////////////////
  ProposalBloc(
    this._createToiletProposalUseCase,
  ) : super(InitialState()) {
    on<CreateToiletProposalEvent>(_onCreateToiletProposalEvent);
  }

  /////////////////////////////////
  /// Property
  ////////////////////////////////

  /////////////////////////////////
  /// [CreateToiletProposalEvent] Event Handler
  ////////////////////////////////
  Future<void> _onCreateToiletProposalEvent(
      CreateToiletProposalEvent event, Emitter<ProposalState> emit) async {
    try {
      final response = await _createToiletProposalUseCase.call(event.params);
      response.fold((l) {
        log.e(l);
      }, (r) {
        emit(SuccessCreateToiletProposalState());
      });
    } catch (e) {}
  }
}
