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
/// Loaded Toilet Review By User Id
////////////////////////////////
class LoadedToiletReviewsByUserIdState extends ReviewState {
  final List<Review> reviews;

  @override
  LoadedToiletReviewsByUserIdState({required this.reviews});

  @override
  List<Object> get props => [reviews];
}

/////////////////////////////////
/// Loaded Toilet Review By Toilet Id
////////////////////////////////
class LoadedToiletReviewsByToiletIdState extends ReviewState {
  final List<Review> reviews;

  @override
  LoadedToiletReviewsByToiletIdState({required this.reviews});

  @override
  List<Object> get props => [reviews];
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
