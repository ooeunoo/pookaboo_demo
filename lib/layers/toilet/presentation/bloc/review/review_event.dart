part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent extends Equatable {}

/////////////////////////////////
/// Review Create
////////////////////////////////
class CreateToiletReviewEvent extends ReviewEvent {
  CreateToiletReviewEvent();

  @override
  List<Object?> get props => [];
}

/////////////////////////////////
/// Get Reviews By Toilet Id
////////////////////////////////
class GetToiletReviewsEvent extends ReviewEvent {
  final String toiletId;

  GetToiletReviewsEvent({required this.toiletId});

  @override
  List<Object?> get props => [toiletId];
}
