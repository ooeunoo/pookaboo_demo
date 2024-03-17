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
  final String toiletId;

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
