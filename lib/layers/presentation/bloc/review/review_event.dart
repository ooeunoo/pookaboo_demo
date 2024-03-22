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
  final int toilet_id;

  GetToiletReviewsByToiletIdEvent({required this.toilet_id});

  @override
  List<Object?> get props => [toilet_id];
}

/////////////////////////////////
/// Get Reviews By User Id
////////////////////////////////
class GetToiletReviewsByUserIdEvent extends ReviewEvent {
  final String user_id;

  GetToiletReviewsByUserIdEvent({required this.user_id});

  @override
  List<Object?> get props => [user_id];
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
