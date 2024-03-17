part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent extends Equatable {}

/////////////////////////////////
/// Review Create
////////////////////////////////
class CreateToiletReviewEvent extends ReviewEvent {
  final CreateReviewParams params;

  CreateToiletReviewEvent({required this.params});

  @override
  List<Object?> get props => [params];
}

/////////////////////////////////
/// Get Reviews By Toilet Id
////////////////////////////////
class GetToiletReviewsByToiletIdEvent extends ReviewEvent {
  final int toiletId;

  GetToiletReviewsByToiletIdEvent({required this.toiletId});

  @override
  List<Object?> get props => [toiletId];
}

/////////////////////////////////
/// Get Reviews By User Id
////////////////////////////////
class GetToiletReviewsByUserIdEvent extends ReviewEvent {
  final String userId;

  GetToiletReviewsByUserIdEvent({required this.userId});

  @override
  List<Object?> get props => [userId];
}

/////////////////////////////////
/// Delete Review By Review Id
////////////////////////////////
class DeleteToiletReviewsByReviewIdEvent extends ReviewEvent {
  final int reviewId;

  DeleteToiletReviewsByReviewIdEvent({required this.reviewId});

  @override
  List<Object?> get props => [reviewId];
}

