part of 'visitation_bloc.dart';

@immutable
abstract class VisitationEvent extends Equatable {}

/////////////////////////////////
/// Visitation Event
////////////////////////////////
class CreateToiletVisitationEvent extends VisitationEvent {
  final String userId;
  final int toiletId;

  CreateToiletVisitationEvent({required this.userId, required this.toiletId});

  @override
  List<Object?> get props => [userId, toiletId];
}

/////////////////////////////////
/// Get Visitations By User Id
////////////////////////////////
class GetToiletVisitationsByUserIdEvent extends VisitationEvent {
  final String userId;

  GetToiletVisitationsByUserIdEvent({required this.userId});

  @override
  List<Object?> get props => [userId];
}

/////////////////////////////////
/// Open ToiletReviewForm Event
////////////////////////////////
class OpenToiletReviewFormEvent extends VisitationEvent {
  OpenToiletReviewFormEvent();

  @override
  List<Object?> get props => [];
}
