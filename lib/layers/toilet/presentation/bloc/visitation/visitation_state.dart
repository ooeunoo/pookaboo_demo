part of 'visitation_bloc.dart';

@immutable
abstract class VisitationState extends Equatable {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends VisitationState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Empty
////////////////////////////////
class EmptyState extends VisitationState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Searching Visitation
////////////////////////////////
class SearchingToiletVisitationtate extends VisitationState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Loaded Toilet Visitation By User Id
////////////////////////////////
class LoadedToiletVisitationsByUserIdState extends VisitationState {
  final List<Visitation> visitations;

  @override
  LoadedToiletVisitationsByUserIdState({required this.visitations});

  @override
  List<Object> get props => [visitations];
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

  @override
  List<Object> get props => [message];
}
