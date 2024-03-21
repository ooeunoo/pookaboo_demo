part of 'toilet_bloc.dart';

@immutable
abstract class ToiletState {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends ToiletState {}

/////////////////////////////////
/// Empty
////////////////////////////////
class EmptyState extends ToiletState {}

/////////////////////////////////
///
////////////////////////////////
class LoadedToiletImagesState extends ToiletState {
  final List<String> images;

  LoadedToiletImagesState({required this.images});

  @override
  List<Object> get props => [images];
}

/////////////////////////////////
///
////////////////////////////////
class SuccessCreateToiletProposalState extends ToiletState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
///
////////////////////////////////
class SuccessUploadToiletImagesState extends ToiletState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends ToiletState {
  final String message;

  ErrorState({
    required this.message,
  });
}
