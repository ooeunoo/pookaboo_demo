part of 'review_bloc.dart';

@immutable
abstract class ReviewState {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends ReviewState {}

/////////////////////////////////
/// Success Create Toielt Review
////////////////////////////////
class SuccessCreateToiletReviewState extends ReviewState {}

/////////////////////////////////
/// Searching Review
////////////////////////////////
class SearchingToiletReviewState extends ReviewState {}

/////////////////////////////////
/// Loaded Toilet Review By User Id
////////////////////////////////
class LoadedToiletReviewsByUserIdState extends ReviewState {
  final List<Review> reviews;

  @override
  LoadedToiletReviewsByUserIdState({required this.reviews});
}

/////////////////////////////////
/// Loaded Toilet Review By Toilet Id
////////////////////////////////
class LoadedToiletReviewsByToiletIdState extends ReviewState {
  final List<Review> reviews;

  @override
  LoadedToiletReviewsByToiletIdState({required this.reviews});
}

/////////////////////////////////
/// Success Delete Review
////////////////////////////////
class SuccessDeleteToiletReviewState extends ReviewState {}

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends ReviewState {
  final String message;

  ErrorState({
    required this.message,
  });
}
