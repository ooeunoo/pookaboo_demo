import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pookaboo/layers/domain/entities/toilet/upload_toilet_images_params.dart';
import 'package:pookaboo/layers/domain/usecases/toilet/toilet_usecase.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'toilet_state.dart';
part 'toilet_event.dart';

class ToiletBloc extends Bloc<ToiletEvent, ToiletState> {
  /////////////////////////////////
  /// UseCase
  ////////////////////////////////
  final CreateToiletProposalUseCase _createToiletProposalUseCase;
  final UploadToiletImagesUseCase _uploadToiletImagesUseCase;
  final GetToiletImagesUseCase _getToiletImagesUseCase;

  /////////////////////////////////
  /// Event Mapping
  ////////////////////////////////
  ToiletBloc(this._createToiletProposalUseCase, this._uploadToiletImagesUseCase,
      this._getToiletImagesUseCase)
      : super(InitialState()) {
    on<CreateToiletProposalEvent>(_onCreateToiletProposalEvent);
    on<UploadToiletImagesEvent>(_onUploadToiletImagesEvent);
    on<GetToiletImagesEvent>(_onGetToiletImagesEvent);
  }

  /////////////////////////////////
  /// Property
  ////////////////////////////////

  /////////////////////////////////
  /// [CreateToiletProposalEvent] Event Handler
  ////////////////////////////////
  Future<void> _onCreateToiletProposalEvent(
      CreateToiletProposalEvent event, Emitter<ToiletState> emit) async {
    try {
      final response = await _createToiletProposalUseCase.call(event.params);
      response.fold((l) {
        log.e(l);
      }, (r) {
        emit(SuccessCreateToiletProposalState());
      });
    } catch (e) {}
  }

  Future<void> _onUploadToiletImagesEvent(
      UploadToiletImagesEvent event, Emitter<ToiletState> emit) async {
    try {
      final response = await _uploadToiletImagesUseCase.call(event.params);
      response.fold((l) {
        log.e(l);
      }, (r) {
        emit(SuccessUploadToiletImagesState());
      });
    } catch (e) {}
  }

  Future<void> _onGetToiletImagesEvent(
      GetToiletImagesEvent event, Emitter<ToiletState> emit) async {
    try {
      emit(LoadingToiletImagesState());

      final response = await _getToiletImagesUseCase.call(event.toiletId);

      response.fold((l) {
        log.e(l);
      }, (r) {
        emit(LoadedToiletImagesState(images: r));
      });
    } catch (e) {}
  }
}
