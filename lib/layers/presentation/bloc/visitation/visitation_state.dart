part of 'visitation_bloc.dart';

@immutable
abstract class VisitationState {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends VisitationState {}

/////////////////////////////////
/// Empty
////////////////////////////////
class EmptyState extends VisitationState {}

/////////////////////////////////
/// Searching Visitation
////////////////////////////////
class SearchingToiletVisitationtate extends VisitationState {}

/////////////////////////////////
/// Loaded Toilet Visitation By User Id
////////////////////////////////
class LoadedToiletVisitationsByUserIdState extends VisitationState {
  final List<Visitation> visitations;

  @override
  LoadedToiletVisitationsByUserIdState({
    required this.visitations,
  });
}

/////////////////////////////////
/// Loaded Toilet Review By Toilet Id
////////////////////////////////
// class LoadedToiletReviewsByToiletIdState extends VisitationState {
//   final List<Review> reviews;

//   @override
//   LoadedToiletReviewsByToiletIdState({required this.reviews});

//   @override
//   List<Object> get props => [reviews];
// }

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends VisitationState {
  final String message;

  ErrorState({
    required this.message,
  });
}
