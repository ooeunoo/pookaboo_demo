part of 'review_bloc.dart';

@immutable
abstract class ReviewState extends Equatable {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends ReviewState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Searching Review
////////////////////////////////
class SearchingToiletReviewState extends ReviewState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Loaded Toilet Markers
////////////////////////////////
class LoadedToiletReviewsState extends ReviewState {
  @override
  LoadedToiletReviewsState();

  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends ReviewState {
  final String message;

  ErrorState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
